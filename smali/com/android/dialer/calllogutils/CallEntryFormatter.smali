.class public Lcom/android/dialer/calllogutils/CallEntryFormatter;
.super Ljava/lang/Object;
.source "CallEntryFormatter.java"


# static fields
.field public static mCalendar:Ljava/util/Calendar;

.field public static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 6

    const/16 v5, 0x17

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 62
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p0

    .line 78
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-ge p1, p2, :cond_0

    return-object p0

    .line 90
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 91
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 92
    invoke-static {}, Landroid/icu/text/BreakIterator;->getSentenceInstance()Landroid/icu/text/BreakIterator;

    move-result-object p2

    const/16 v0, 0x100

    .line 89
    invoke-static {p1, p0, p2, v0}, Landroid/icu/lang/UCharacter;->toTitleCase(Ljava/util/Locale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatDuration(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 7

    const-wide/16 v0, 0x3c

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    .line 101
    div-long v5, p1, v0

    mul-long/2addr v0, v5

    sub-long/2addr p1, v0

    const v0, 0x7f110090

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 104
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f110091

    new-array v1, v4, [Ljava/lang/Object;

    .line 107
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatDurationA11y(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 8

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-wide/16 v1, 0x3c

    cmp-long v3, p1, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const v7, 0x7f0f0001

    if-ltz v3, :cond_0

    .line 114
    div-long v1, p1, v1

    long-to-int v1, v1

    long-to-int p1, p1

    mul-int/lit8 p2, v1, 0x3c

    sub-int/2addr p1, p2

    const/high16 p2, 0x7f0f0000

    .line 116
    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    .line 117
    invoke-virtual {v0, v7, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f110013

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    aput-object p2, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    const/4 p1, 0x3

    aput-object v0, v3, p1

    .line 119
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    long-to-int v1, p1

    .line 122
    invoke-virtual {v0, v7, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110014

    new-array v2, v6, [Ljava/lang/Object;

    .line 125
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v5

    aput-object v0, v2, v4

    .line 124
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDurationAndDataUsage(Landroid/content/Context;JJ)Ljava/lang/CharSequence;
    .locals 0

    .line 139
    invoke-static {p0, p1, p2}, Lcom/android/dialer/calllogutils/CallEntryFormatter;->formatDuration(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    .line 138
    invoke-static {p0, p1, p3, p4}, Lcom/android/dialer/calllogutils/CallEntryFormatter;->formatDurationAndDataUsageInternal(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static formatDurationAndDataUsageA11y(Landroid/content/Context;JJ)Ljava/lang/CharSequence;
    .locals 0

    .line 152
    invoke-static {p0, p1, p2}, Lcom/android/dialer/calllogutils/CallEntryFormatter;->formatDurationA11y(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    .line 151
    invoke-static {p0, p1, p3, p4}, Lcom/android/dialer/calllogutils/CallEntryFormatter;->formatDurationAndDataUsageInternal(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static formatDurationAndDataUsageInternal(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .locals 3

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 159
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-static {p0, p2, p3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-static {v0}, Lcom/android/dialer/util/DialerUtils;->join(Ljava/lang/Iterable;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static getCallDate(Landroid/content/Context;Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)Ljava/lang/CharSequence;
    .locals 4

    .line 170
    sput-object p0, Lcom/android/dialer/calllogutils/CallEntryFormatter;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 173
    invoke-virtual {p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/dialer/calllogutils/CallEntryFormatter;->getGranularDate(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 174
    invoke-virtual {p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getDate()J

    move-result-wide v2

    const/4 p1, 0x1

    invoke-static {p0, v2, v3, p1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, p1

    const p0, 0x7f110507

    .line 171
    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGranularDate(J)Ljava/lang/String;
    .locals 3

    .line 180
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 182
    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/contacts/common/util/DateUtils;->getDayDifference(Landroid/text/format/Time;JJ)I

    move-result v0

    .line 183
    invoke-static {p0, p1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    sget-object p0, Lcom/android/dialer/calllogutils/CallEntryFormatter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f11050b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 187
    sget-object p0, Lcom/android/dialer/calllogutils/CallEntryFormatter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1100d4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 190
    :cond_1
    sget-object v0, Lcom/android/dialer/calllogutils/CallEntryFormatter;->mContext:Landroid/content/Context;

    const v1, 0x10010

    .line 195
    invoke-static {p0, p1}, Lcom/android/dialer/calllogutils/CallEntryFormatter;->shouldShowYear(J)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    :goto_0
    or-int/2addr v1, v2

    .line 190
    invoke-static {v0, p0, p1, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shouldShowYear(J)Z
    .locals 3

    .line 199
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllogutils/CallEntryFormatter;->mCalendar:Ljava/util/Calendar;

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 201
    sget-object v0, Lcom/android/dialer/calllogutils/CallEntryFormatter;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 202
    sget-object v2, Lcom/android/dialer/calllogutils/CallEntryFormatter;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 203
    sget-object p0, Lcom/android/dialer/calllogutils/CallEntryFormatter;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
