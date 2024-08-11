Here's an optimized version of the `README.md` focused on ensuring fast execution in a Zsh terminal on a Mac, tailored for quick setup and usage:

```markdown
# AI API Automations

## Overview

This repository provides fast and efficient scripts to automate the setup of various AI APIs, including the OpenAI Assistant API, OpenAI API, and OpenAI JSON Structured Outputs. These tools are optimized for quick execution in a Zsh terminal on macOS, ensuring minimal overhead and streamlined workflows.

## Features

- **Quick Setup Scripts**: Minimal, fast-executing scripts designed for Zsh in macOS environments.
- **Environment Setup**: Automates the installation of necessary dependencies and environment configuration.
- **OpenAI API Integration**: Efficiently set up and manage the OpenAI Assistant API, OpenAI API, and JSON structured outputs.
- **JSON Mode**: Ensures outputs conform to JSON schemas, providing consistent and reliable results for downstream processing.
- **Optimized for Zsh**: Specifically optimized for execution in Zsh, leveraging macOS-specific tools and configurations.
- **Minimal Dependencies**: Reduces the number of dependencies to ensure quick installation and setup.

## Getting Started

### Prerequisites

Ensure you have the following installed on your macOS system:

- **Python 3.x** (Ensure it's available via Homebrew)
- **pip**
- **Virtualenv** (optional, but recommended for isolated environments)
- **Zsh** (Configured as the default shell)

### Installation

1. **Clone the Repository**:

   ```zsh
   git clone https://github.com/nate-dryer/api_automations.git
   cd api_automations
   ```

2. **Install Dependencies**:

   Install the necessary Python packages quickly:

   ```zsh
   pip install -r requirements.txt
   ```

3. **Environment Setup**:

   Set up your environment variables directly from the terminal:

   ```zsh
   cp .env.example .env
   ```

   Open the `.env` file in your preferred editor (e.g., `nano`, `vim`, or `code`) and add your API keys.

4. **Run the Initial Setup**:

   Execute the setup script to configure your environment:

   ```zsh
   ./setup.sh
   ```

### Configurations

#### OpenAI API Setup

1. **OpenAI Assistant API**:
   - Store your API key in the `.env` file under `OPENAI_ASSISTANT_API_KEY`.
   - Initialize the API quickly:

     ```zsh
     ./setup_openai_assistant.sh
     ```

2. **OpenAI API**:
   - Store your OpenAI API key in the `.env` file under `OPENAI_API_KEY`.
   - Run the setup script for the OpenAI API:

     ```zsh
     ./setup_openai_api.sh
     ```

3. **OpenAI JSON Structured Outputs**:
   - Enable structured outputs by setting the following in your `.env` file:

     ```zsh
     export OPENAI_JSON_OUTPUT=true
     ```
   - Initialize JSON output handling:

     ```zsh
     ./setup_json_outputs.sh
     ```

### Usage

- **Start the Server**:

  Quickly start the AI server:

  ```zsh
  ./start_server.sh
  ```

- **Generate JSON Structured Outputs**:

  Use the following example to generate structured outputs:

  ```zsh
  python openai_json_outputs.py
  ```

- **Deploy to Production**:

  Use the following command for fast deployment:

  ```zsh
  ./deploy.sh
  ```

### Example Scripts

- **Simple OpenAI API Call**:

  Quickly execute a simple API call:

  ```zsh
  python -c "
  import openai
  openai.api_key = os.getenv('OPENAI_API_KEY')
  response = openai.Completion.create(
      model='text-davinci-003',
      prompt='What is the capital of France?',
      max_tokens=50
  )
  print(response.choices[0].text.strip())"
  ```

- **OpenAI JSON Structured Output**:

  Generate a JSON structured output efficiently:

  ```zsh
  python -c "
  import openai
  openai.api_key = os.getenv('OPENAI_API_KEY')
  response = openai.ChatCompletion.create(
      model='gpt-4',
      messages=[{'role': 'user', 'content': 'Generate a JSON response with a summary of AI trends in 2024'}],
      functions=[{
          'name': 'generate_json',
          'parameters': {
              'type': 'object',
              'properties': {
                  'summary': {'type': 'string', 'description': 'A brief summary of AI trends in 2024.'}
              },
              'required': ['summary']
          }
      }]
  )
  print(response['choices'][0]['message']['function_call']['arguments'])"
  ```

## Contributing

Contributions are welcome! If you'd like to improve the scripts, add new features, or fix bugs, please feel free to fork this repository and submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or feedback, please reach out to [Nate Dryer](https://github.com/nate-dryer).
```

### Key Optimizations:
- **Execution in Zsh:** The scripts and commands are optimized for quick execution in Zsh on macOS, utilizing typical Mac tools and utilities.
- **Reduced Overhead:** The focus on minimal dependencies ensures that the setup process is as fast as possible, avoiding unnecessary bloat.
- **Environment Variables:** Direct integration of environment variables in the `.zshrc` ensures that the setup is streamlined for Mac users.
