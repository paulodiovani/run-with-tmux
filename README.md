# run-with-tmux

A bash script to run concurrent applications in tmux panels

## Install & config

```bash
# 1. Download the latest version from https://github.com/paulodiovani/run-with-tmux/raw/main/start.sh
curl -LJO https://github.com/paulodiovani/run-with-tmux/raw/main/start.sh

# 2. Make it executable
chmod +x start.sh

# 2. Create your launch config in a new text file, with one command per line
<<EOF > sample.commands
watch date
top
while while true; do echo "Sleeping..."; sleep 2; done;
EOF
```

## Run

Run the `start.sh` script with the `*.commands` file as argument.

```bash
./start.sh sample.commands
```

## Screenshots

![screnshot](./media/screenshot.png)
