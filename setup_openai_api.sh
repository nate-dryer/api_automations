#!/bin/zsh

# Install necessary dependencies
echo "Installing necessary dependencies..."
pip install openai

# Configure environment variables
echo "Configuring environment variables..."
if [ -f .env ]; then
  export $(cat .env | xargs)
else
  echo ".env file not found. Please create and configure your .env file."
  exit 1
fi

# Verify the setup
echo "Verifying the setup..."
python -c "
import openai
if 'OPENAI_API_KEY' in os.environ:
    print('OpenAI API key is set.')
else:
    print('OpenAI API key is not set.')
    exit(1)
"
