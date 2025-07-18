#!/bin/bash
set -e

cd "$WORKSPACE" || exit 1



if [ -z "$OPENAI_API_KEY" ]; then
  echo "❌ OPENAI_API_KEY is NOT set!"
  env  # list all env variables for debug
  exit 1
fi

if [ -z "$HUGGINGFACEHUB_API_TOKEN" ]; then
  echo "❌ HUGGINGFACEHUB_API_TOKEN is not set"
  env
  exit 1
fi

echo "✅ API keys loaded"
echo "🔑 OpenAI key length: ${#OPENAI_API_KEY}"
echo "🔑 HuggingFace token length: ${#HUGGINGFACEHUB_API_TOKEN}"


# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
  echo "📦 Creating virtual environment..."
  python3 -m venv venv
fi

# Activate the virtual environment
source venv/bin/activate

# Upgrade pip inside the venv
pip install --upgrade pip

# Install requirements
#pip install -r requirements.txt

# Kill any existing app instance
pkill -f gradio-dashboard.py || true


# Run the app in the background
cd app
nohup ../venv/bin/python gradio-dashboard.py > ../gradio.log 2>&1 &

echo "✅ Deployment complete. Logs at gradio.log"
