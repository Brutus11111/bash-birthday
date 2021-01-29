# bash-birthday

This is a simple script to show you birthdays and holidays on the terminal. I set it up to display the ones for today and for tomorrow.

## Adding birthdays

Open the file `birthdays.text` and add new people in the following way:

```firstname lastname,12-31```

I used the month-day version because I prefer the `YYYY-MM-DD` version. Without `YYYY` you end up with `MM-DD`.

## Adding holidays

Open the file `holiday.text` and add new celebrations in the following way:

```holiday name,12-31```

## Adding it to your .bashrc

Adding it to your `.bashrc` file is easy. Open your `.bashrc` and add the following line:

```~/location/of/script/birthday.sh```

## File locations

File locations are in the bash file. I have a scripts folder in my home directory. Change accordingly.

