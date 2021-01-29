# bash-birthday

This is a simple script to show you birthdays and celebrations on the terminal. I set it up to display the ones for today and for tomorrow.

## Adding birthdays

Open the file `birthdays.text` and add new people in the following way:

```firstname lastname,12-31```

I used the month-day version because I prefer the `YYYY-MM-DD` version. Without `YYYY` you end up with `MM-DD`.

## Adding celebrations

Open the file `celebrations.text` and add new celebrations in the following way:

```Festival name,12-31```

## Adding it to your .bashrc

Adding it to your `.bashrc` file is easy. Open your `.bashrc` and add the following line:

```~/location/of/script/birthday.sh```

## File locations

File locations are in the bash file. I have a scripts folder in my home directory. Change accordingly.

## Colors

I put a list of colors and other options in the bash file. Change them to what works for you. It's also possible to use blinking and bold and inverted. I listed those options as well.

For example:

```
#Invert         \e[8m
#Red            \e[1;36m
```

Combined that would be:

```
\e[8m\e[1;36m
```
