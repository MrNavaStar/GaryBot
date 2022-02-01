import subprocess

from discord.ext import commands
from constants import *

bot = commands.Bot(command_prefix="!")


@bot.event
async def on_ready():
    print(f"Logged in as: {bot.user}")


@bot.command()
async def update(ctx):
    await ctx.send("Updating!")
    subprocess.call(["sh", "./update.sh", ctx.channel.id])
    quit(0)


if __name__ == '__main__':
    bot.run(DISCORD_BOT_TOKEN)
