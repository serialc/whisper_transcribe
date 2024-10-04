# Evaluating results of Whisper (OpenAI) transcribing

## Translation of interviews

Following Whisper [instructions on github](https://github.com/openai/whisper).

## Testing translation processing quality and duration

Using [Carl Sagan's 4m35s monolog](https://www.loc.gov/item/cosmos000110/).

### Processing duration 

size    real    user    sys
tiny    0m26,279s 1m33,052s 0m2,982s
base    0m54,059s 3m21,658s 0m4,718s
small   2m35,681s 9m57,603s 0m10,993s
medium  7m47,940s 30m21,255s 0m22,939s
large   18m47,039s 55m31,671s 11m43,767s
turbo   3m27,205s 12m15,841s 1m3,422s

### Methodology

I ran the following command while adjust the [size] to the options above:

    time whisper --output_dir [size] carl_sagan.mp3 --language English --model [size]

Note that Whisper can transcribe many languages. The quality may vary but the current available options are:

Afrikaans,Albanian,Amharic,Arabic,Armenian,Assamese,Azerbaijani,Bashkir,Basque,Belarusian,Bengali,Bosnian,Breton,Bulgarian,Burmese,Cantonese,Castilian,Catalan,Chinese,Croatian,Czech,Danish,Dutch,English,Estonian,Faroese,Finnish,Flemish,French,Galician,Georgian,German,Greek,Gujarati,Haitian,Haitian Creole,Hausa,Hawaiian,Hebrew,Hindi,Hungarian,Icelandic,Indonesian,Italian,Japanese,Javanese,Kannada,Kazakh,Khmer,Korean,Lao,Latin,Latvian,Letzeburgesch,Lingala,Lithuanian,Luxembourgish,Macedonian,Malagasy,Malay,Malayalam,Maltese,Mandarin,Maori,Marathi,Moldavian,Moldovan,Mongolian,Myanmar,Nepali,Norwegian,Nynorsk,Occitan,Panjabi,Pashto,Persian,Polish,Portuguese,Punjabi,Pushto,Romanian,Russian,Sanskrit,Serbian,Shona,Sindhi,Sinhala,Sinhalese,Slovak,Slovenian,Somali,Spanish,Sundanese,Swahili,Swedish,Tagalog,Tajik,Tamil,Tatar,Telugu,Thai,Tibetan,Turkish,Turkmen,Ukrainian,Urdu,Uzbek,Valencian,Vietnamese,Welsh,Yiddish,Yoruba

## Translation

This is only to English (currently).

In the command just specify the source `--language French` and ask for translation `--task translate`.

So the given example is:
    whisper japanese.wav --language Japanese --task translate

