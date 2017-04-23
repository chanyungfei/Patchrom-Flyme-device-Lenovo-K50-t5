.class public Landroid/text/format/DateFormat;
.super Ljava/lang/Object;
.source "DateFormat.java"


# static fields
.field public static final AM_PM:C = 'a'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAPITAL_AM_PM:C = 'A'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATE:C = 'd'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DAY:C = 'E'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR:C = 'h'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_OF_DAY:C = 'k'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE:C = 'm'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MONTH:C = 'M'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final QUOTE:C = '\''
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SECONDS:C = 's'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDALONE_MONTH:C = 'L'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TIME_ZONE:C = 'z'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YEAR:C = 'y'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sIs24Hour:Z

.field private static sIs24HourLocale:Ljava/util/Locale;

.field private static final sLocaleLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendQuotedText(Landroid/text/SpannableStringBuilder;II)I
    .locals 4
    .param p0, "s"    # Landroid/text/SpannableStringBuilder;
    .param p1, "i"    # I
    .param p2, "len"    # I

    .prologue
    const/16 v3, 0x27

    .line 671
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_0

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 672
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 673
    const/4 v2, 0x1

    return v2

    .line 676
    :cond_0
    const/4 v1, 0x0

    .line 679
    .local v1, "count":I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 680
    add-int/lit8 p2, p2, -0x1

    .line 682
    :goto_0
    if-ge p1, p2, :cond_2

    .line 683
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 685
    .local v0, "c":C
    if-ne v0, v3, :cond_3

    .line 687
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 689
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 690
    add-int/lit8 p2, p2, -0x1

    .line 691
    add-int/lit8 v1, v1, 0x1

    .line 692
    add-int/lit8 p1, p1, 0x1

    .line 687
    goto :goto_0

    .line 695
    :cond_1
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 704
    .end local v0    # "c":C
    :cond_2
    return v1

    .line 699
    .restart local v0    # "c":C
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 700
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inTimeInMillis"    # J

    .prologue
    .line 419
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inDate"    # Ljava/util/Calendar;

    .prologue
    .line 515
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 518
    .local v7, "s":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v5

    .line 520
    .local v5, "localeData":Llibcore/icu/LocaleData;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 522
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 523
    const/4 v1, 0x1

    .line 524
    .local v1, "count":I
    invoke-virtual {v7, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 526
    .local v0, "c":I
    const/16 v8, 0x27

    if-ne v0, v8, :cond_1

    .line 527
    invoke-static {v7, v3, v4}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;II)I

    move-result v1

    .line 528
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 522
    :cond_0
    :goto_1
    add-int/2addr v3, v1

    goto :goto_0

    .line 532
    :cond_1
    :goto_2
    add-int v8, v3, v1

    if-ge v8, v4, :cond_2

    add-int v8, v3, v1

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v0, :cond_2

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 537
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 591
    const/4 v6, 0x0

    .line 595
    :goto_3
    if-eqz v6, :cond_0

    .line 596
    add-int v8, v3, v1

    invoke-virtual {v7, v3, v8, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 597
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 598
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    goto :goto_1

    .line 540
    :sswitch_0
    iget-object v8, v5, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/16 v9, 0x9

    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x0

    aget-object v6, v8, v9

    .local v6, "replacement":Ljava/lang/String;
    goto :goto_3

    .line 543
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_1
    const/4 v8, 0x5

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    .line 548
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_2
    const/4 v8, 0x7

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 547
    invoke-static {v5, v8, v1, v0}, Landroid/text/format/DateFormat;->getDayOfWeekString(Llibcore/icu/LocaleData;III)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    .line 553
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_3
    const/16 v8, 0xa

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 554
    .local v2, "hour":I
    const/16 v8, 0x68

    if-ne v0, v8, :cond_3

    if-nez v2, :cond_3

    .line 555
    const/16 v2, 0xc

    .line 557
    :cond_3
    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    .line 563
    .end local v2    # "hour":I
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_4
    const/16 v8, 0xb

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 570
    .restart local v2    # "hour":I
    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    .line 576
    .end local v2    # "hour":I
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_5
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 575
    invoke-static {v5, v8, v1, v0}, Landroid/text/format/DateFormat;->getMonthString(Llibcore/icu/LocaleData;III)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    .line 579
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_6
    const/16 v8, 0xc

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    .line 582
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_7
    const/16 v8, 0xd

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    .line 585
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_8
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8, v1}, Landroid/text/format/DateFormat;->getYearString(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    .line 588
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_9
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    .line 602
    .end local v0    # "c":I
    .end local v1    # "count":I
    .end local v6    # "replacement":Ljava/lang/String;
    :cond_4
    instance-of v8, p0, Landroid/text/Spanned;

    if-eqz v8, :cond_5

    .line 603
    new-instance v8, Landroid/text/SpannedString;

    invoke-direct {v8, v7}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v8

    .line 605
    :cond_5
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 537
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x45 -> :sswitch_2
        0x48 -> :sswitch_4
        0x4b -> :sswitch_3
        0x4c -> :sswitch_5
        0x4d -> :sswitch_5
        0x61 -> :sswitch_0
        0x63 -> :sswitch_2
        0x64 -> :sswitch_1
        0x68 -> :sswitch_3
        0x6b -> :sswitch_4
        0x6d -> :sswitch_6
        0x73 -> :sswitch_7
        0x79 -> :sswitch_8
        0x7a -> :sswitch_9
    .end sparse-switch
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inDate"    # Ljava/util/Date;

    .prologue
    .line 430
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 431
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 432
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static formatZoneOffset(II)Ljava/lang/String;
    .locals 6
    .param p0, "offset"    # I
    .param p1, "count"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 647
    div-int/lit16 p0, p0, 0x3e8

    .line 648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    .local v2, "tb":Ljava/lang/StringBuilder;
    if-gez p0, :cond_0

    .line 651
    const-string/jumbo v3, "-"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    neg-int p0, p0

    .line 657
    :goto_0
    div-int/lit16 v0, p0, 0xe10

    .line 658
    .local v0, "hours":I
    rem-int/lit16 v3, p0, 0xe10

    div-int/lit8 v1, v3, 0x3c

    .line 660
    .local v1, "minutes":I
    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 654
    .end local v0    # "hours":I
    .end local v1    # "minutes":I
    :cond_0
    const-string/jumbo v3, "+"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "skeleton"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-static {p1, p0}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->isCts()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1

    .line 301
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 302
    const-string/jumbo v2, "date_format"

    .line 301
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "value":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method private static getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 320
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getDateFormatOrder(Landroid/content/Context;)[C
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 399
    invoke-static {}, Landroid/text/format/DateFormat;->getDateFormatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method private static getDateFormatString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 403
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 404
    .local v0, "df":Ljava/text/DateFormat;
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    .line 405
    check-cast v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "df":Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 408
    .restart local v0    # "df":Ljava/text/DateFormat;
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "!(df instanceof SimpleDateFormat)"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 333
    if-eqz p1, :cond_5

    .line 334
    const/16 v5, 0x4d

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 335
    .local v2, "month":I
    const/16 v5, 0x64

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 336
    .local v1, "day":I
    const/16 v5, 0x79

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 338
    .local v4, "year":I
    if-ltz v2, :cond_5

    if-ltz v1, :cond_5

    if-ltz v4, :cond_5

    .line 339
    const v5, 0x1040050

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "template":Ljava/lang/String;
    if-ge v4, v2, :cond_1

    if-ge v4, v1, :cond_1

    .line 341
    if-ge v2, v1, :cond_0

    .line 342
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v7

    const-string/jumbo v6, "MM"

    aput-object v6, v5, v8

    const-string/jumbo v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 360
    :goto_0
    return-object p1

    .line 344
    :cond_0
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v7

    const-string/jumbo v6, "dd"

    aput-object v6, v5, v8

    const-string/jumbo v6, "MM"

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 346
    :cond_1
    if-ge v2, v1, :cond_3

    .line 347
    if-ge v1, v4, :cond_2

    .line 348
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "MM"

    aput-object v6, v5, v7

    const-string/jumbo v6, "dd"

    aput-object v6, v5, v8

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 350
    :cond_2
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "MM"

    aput-object v6, v5, v7

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v8

    const-string/jumbo v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 353
    :cond_3
    if-ge v2, v4, :cond_4

    .line 354
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "dd"

    aput-object v6, v5, v7

    const-string/jumbo v6, "MM"

    aput-object v6, v5, v8

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 356
    :cond_4
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "dd"

    aput-object v6, v5, v7

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v8

    const-string/jumbo v6, "MM"

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 365
    .end local v1    # "day":I
    .end local v2    # "month":I
    .end local v3    # "template":Ljava/lang/String;
    .end local v4    # "year":I
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v5}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 366
    .local v0, "d":Llibcore/icu/LocaleData;
    iget-object v5, v0, Llibcore/icu/LocaleData;->shortDateFormat4:Ljava/lang/String;

    return-object v5
.end method

.method private static getDayOfWeekString(Llibcore/icu/LocaleData;III)Ljava/lang/String;
    .locals 2
    .param p0, "ld"    # Llibcore/icu/LocaleData;
    .param p1, "day"    # I
    .param p2, "count"    # I
    .param p3, "kind"    # I

    .prologue
    .line 610
    const/16 v1, 0x63

    if-ne p3, v1, :cond_0

    const/4 v0, 0x1

    .line 611
    .local v0, "standalone":Z
    :goto_0
    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    .line 612
    if-eqz v0, :cond_1

    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyStandAloneWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    :goto_1
    return-object v1

    .line 610
    .end local v0    # "standalone":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "standalone":Z
    goto :goto_0

    .line 612
    :cond_1
    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    .line 613
    :cond_2
    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    .line 614
    if-eqz v0, :cond_3

    iget-object v1, p0, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    :goto_2
    return-object v1

    :cond_3
    iget-object v1, p0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_2

    .line 616
    :cond_4
    if-eqz v0, :cond_5

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    :goto_3
    return-object v1

    :cond_5
    iget-object v1, p0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_3
.end method

.method public static getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 376
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 386
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static getMonthString(Llibcore/icu/LocaleData;III)Ljava/lang/String;
    .locals 2
    .param p0, "ld"    # Llibcore/icu/LocaleData;
    .param p1, "month"    # I
    .param p2, "count"    # I
    .param p3, "kind"    # I

    .prologue
    .line 621
    const/16 v1, 0x4c

    if-ne p3, v1, :cond_0

    const/4 v0, 0x1

    .line 622
    .local v0, "standalone":Z
    :goto_0
    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    .line 623
    if-eqz v0, :cond_1

    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyStandAloneMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    :goto_1
    return-object v1

    .line 621
    .end local v0    # "standalone":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "standalone":Z
    goto :goto_0

    .line 623
    :cond_1
    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    .line 624
    :cond_2
    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    .line 625
    if-eqz v0, :cond_3

    iget-object v1, p0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    :goto_2
    return-object v1

    :cond_3
    iget-object v1, p0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_2

    .line 626
    :cond_4
    const/4 v1, 0x3

    if-ne p2, v1, :cond_6

    .line 627
    if-eqz v0, :cond_5

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    :goto_3
    return-object v1

    :cond_5
    iget-object v1, p0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_3

    .line 630
    :cond_6
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1, p2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .prologue
    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 286
    .local v0, "d":Llibcore/icu/LocaleData;
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 5
    .param p0, "inDate"    # Ljava/util/Calendar;
    .param p1, "count"    # I

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 635
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 636
    .local v1, "tz":Ljava/util/TimeZone;
    const/4 v2, 0x2

    if-ge p1, v2, :cond_0

    .line 637
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 638
    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 637
    add-int/2addr v2, v3

    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->formatZoneOffset(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 641
    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 642
    .local v0, "dst":Z
    :goto_0
    invoke-virtual {v1, v0, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 641
    .end local v0    # "dst":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "dst":Z
    goto :goto_0
.end method

.method private static getYearString(II)Ljava/lang/String;
    .locals 5
    .param p0, "year"    # I
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x2

    .line 666
    if-gt p1, v1, :cond_0

    rem-int/lit8 v0, p0, 0x64

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 667
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasDesignator(Ljava/lang/CharSequence;C)Z
    .locals 6
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "designator"    # C

    .prologue
    const/4 v5, 0x0

    .line 457
    if-nez p0, :cond_0

    return v5

    .line 459
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 464
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 465
    const/4 v1, 0x1

    .line 466
    .local v1, "count":I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 468
    .local v0, "c":I
    const/16 v4, 0x27

    if-ne v0, v4, :cond_2

    .line 469
    invoke-static {p0, v2, v3}, Landroid/text/format/DateFormat;->skipQuotedText(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 464
    :cond_1
    add-int/2addr v2, v1

    goto :goto_0

    .line 470
    :cond_2
    if-ne v0, p1, :cond_1

    .line 471
    const/4 v4, 0x1

    return v4

    .line 475
    .end local v0    # "c":I
    .end local v1    # "count":I
    :cond_3
    return v5
.end method

.method public static hasSeconds(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "inFormat"    # Ljava/lang/CharSequence;

    .prologue
    .line 447
    const/16 v0, 0x73

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v0

    return v0
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static is24HourFormat(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 188
    const-string/jumbo v6, "time_12_24"

    .line 187
    invoke-static {v5, v6, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "value":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 193
    .local v0, "locale":Ljava/util/Locale;
    sget-object v6, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v6

    .line 194
    :try_start_0
    sget-object v5, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    if-eqz v5, :cond_0

    sget-object v5, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    invoke-virtual {v5, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 195
    sget-boolean v5, Landroid/text/format/DateFormat;->sIs24Hour:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return v5

    :cond_0
    monitor-exit v6

    .line 200
    const/4 v5, 0x1

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 202
    .local v1, "natural":Ljava/text/DateFormat;
    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_2

    move-object v3, v1

    .line 203
    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 204
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "pattern":Ljava/lang/String;
    const/16 v5, 0x48

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    .line 207
    const-string/jumbo v4, "24"

    .line 215
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    sget-object v6, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v6

    .line 216
    :try_start_1
    sput-object v0, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    .line 217
    const-string/jumbo v5, "24"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Landroid/text/format/DateFormat;->sIs24Hour:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v6

    .line 220
    sget-boolean v5, Landroid/text/format/DateFormat;->sIs24Hour:Z

    return v5

    .line 193
    .end local v1    # "natural":Ljava/text/DateFormat;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 209
    .restart local v1    # "natural":Ljava/text/DateFormat;
    .restart local v2    # "pattern":Ljava/lang/String;
    .restart local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    const-string/jumbo v4, "12"

    goto :goto_0

    .line 212
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_2
    const-string/jumbo v4, "12"

    goto :goto_0

    .line 215
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 223
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "natural":Ljava/text/DateFormat;
    :cond_3
    const-string/jumbo v5, "24"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method private static skipQuotedText(Ljava/lang/CharSequence;II)I
    .locals 4
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "i"    # I
    .param p2, "len"    # I

    .prologue
    const/16 v3, 0x27

    .line 479
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_0

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 480
    const/4 v2, 0x2

    return v2

    .line 483
    :cond_0
    const/4 v1, 0x1

    .line 485
    .local v1, "count":I
    add-int/lit8 p1, p1, 0x1

    .line 487
    :goto_0
    if-ge p1, p2, :cond_2

    .line 488
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 490
    .local v0, "c":C
    if-ne v0, v3, :cond_1

    .line 491
    add-int/lit8 v1, v1, 0x1

    .line 493
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_2

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    .line 494
    add-int/lit8 p1, p1, 0x1

    .line 493
    goto :goto_0

    .line 499
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    .end local v0    # "c":C
    :cond_2
    return v1
.end method

.method private static zeroPad(II)Ljava/lang/String;
    .locals 5
    .param p0, "inValue"    # I
    .param p1, "inMinDigits"    # I

    .prologue
    .line 708
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
