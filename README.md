# 📄 ChatGPT Share Link Converter

A lightweight Streamlit web app that converts public ChatGPT share links into clean, downloadable PDF or Word documents.

This tool uses Playwright to load the share page in a headless browser, wait for the chat content to render, and export the result as a polished offline file.

## Features

- Accepts public ChatGPT share links from `chat.openai.com/share/*`, `chatgpt.com/share/*`, and `shareg.pt/*`
- Converts rendered chats to PDF or Word (`.docx`)
- Uses headless Chromium via Playwright for full JavaScript rendering
- Removes unnecessary page chrome for cleaner output
- Provides side-by-side export buttons for PDF and Word
- Shows conversion status and file size after export

## Setup

1. Activate your project environment (optional but recommended):

   ```bash
   python -m venv .venv
   source .venv/bin/activate
   ```

2. Install Python dependencies:

   ```bash
   pip install -r requirements.txt
   ```

3. Install Playwright browser binaries:

   ```bash
   python -m playwright install chromium
   ```

## Run the app

```bash
streamlit run streamlit_app.py
```

Then open the local URL shown in the terminal, such as `http://localhost:8502`.

## Deployment

### Streamlit Cloud (Recommended)

1. Push your code to a GitHub repository
2. The `packages.txt` file ensures Chromium is installed automatically
3. The app includes auto-recovery for missing binaries
4. Just connect your repo to [Streamlit Cloud](https://streamlit.io/cloud) and deploy!

### Other Platforms (Railway, Render, Heroku, etc.)

Add this to your startup command:

```bash
bash setup.sh && streamlit run streamlit_app.py
```

Or manually ensure Playwright binaries are installed before running:

```bash
python -m playwright install chromium
streamlit run streamlit_app.py
```

## Troubleshooting

### "Playwright browser binaries are missing" error

This is typically a one-time initialization issue on first deployment:

1. **On Streamlit Cloud**: Refresh the page. The app auto-detects and installs binaries.
2. **Locally**: Run `python -m playwright install chromium` then restart the app.
3. **Other platforms**: Run `bash setup.sh` before starting the app.

## Usage

- Paste a public ChatGPT share link into the input box.
- Click **Convert to PDF** or **Convert to Word**.
- Download the generated file from the buttons that appear.

## Notes

- Only public share links are supported. Private or authenticated sessions are not supported.
- If rendering takes too long, try again after verifying the URL or using a shorter chat.
- The app automatically handles missing Playwright binaries on most platforms.
- Make sure you run the app in the same Python environment where all dependencies are installed.
