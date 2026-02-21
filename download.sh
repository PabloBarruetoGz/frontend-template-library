#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"

clone() {
  local url="$1"
  local dir="$2"
  if [ -d "$dir" ]; then
    echo "✅ Ya existe: $dir (skip)"
  else
    echo "⬇️  Clonando $url -> $dir"
    git clone --depth 1 "$url" "$dir"
  fi
}

echo "== HTML / Bootstrap =="
mkdir -p "$ROOT/templates/html-bootstrap"
cd "$ROOT/templates/html-bootstrap"
clone https://github.com/StartBootstrap/startbootstrap-agency.git startbootstrap-agency
clone https://github.com/StartBootstrap/startbootstrap-freelancer.git startbootstrap-freelancer
clone https://github.com/ColorlibHQ/gentelella.git gentelella
clone https://github.com/themewagon/BizLand.git BizLand

echo "== React =="
mkdir -p "$ROOT/templates/react"
cd "$ROOT/templates/react"
clone https://github.com/creativetimofficial/material-kit-react.git material-kit-react
clone https://github.com/creativetimofficial/argon-dashboard-react.git argon-dashboard-react
clone https://github.com/themesberg/volt-react-dashboard.git volt-react-dashboard
clone https://github.com/coreui/coreui-free-react-admin-template.git coreui-free-react-admin-template

echo "== Dashboards =="
mkdir -p "$ROOT/templates/dashboards"
cd "$ROOT/templates/dashboards"
clone https://github.com/ColorlibHQ/AdminLTE.git AdminLTE
clone https://github.com/tabler/tabler.git tabler
clone https://github.com/coreui/coreui-free-bootstrap-admin-template.git coreui-free-bootstrap-admin-template
clone https://github.com/BootstrapDash/StarAdmin-Free-Bootstrap-Admin-Template.git StarAdmin-Free-Bootstrap-Admin-Template

echo "== Laravel =="
mkdir -p "$ROOT/templates/laravel"
cd "$ROOT/templates/laravel"
clone https://github.com/laravel/breeze.git breeze
clone https://github.com/laravel/jetstream.git jetstream
clone https://github.com/LaravelDaily/starter-kit.git laraveldaily-starter-kit
clone https://github.com/orchidsoftware/platform.git orchid-platform

echo "✅ Descarga completada."
