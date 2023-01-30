.class public Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;
.super Ljava/lang/Object;
.source "PhoneCallDetailsHelper.java"


# static fields
.field private static final MAX_CALL_TYPE_ICONS:I = 0x3

.field private static final NEW_MAX_CALL_TYPE_ICONS:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTimeMillisForTest:Ljava/lang/Long;

.field private mDescriptionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneTypeLabelForTest:Ljava/lang/CharSequence;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mDescriptionItems:Ljava/util/ArrayList;

    const-string v0, "PhoneCallDetailsHelper"

    .line 81
    iput-object v0, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->TAG:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    .line 92
    iput-object p3, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    .line 93
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private getCurrentTimeMillis()J
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 497
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private getGranularDate(J)Ljava/lang/String;
    .locals 3

    .line 446
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object p1, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f11050b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    const v1, 0x10010

    .line 454
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->shouldShowYear(J)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    or-int/2addr v1, v2

    .line 449
    invoke-static {v0, p1, p2, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getVoicemailDuration(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/String;
    .locals 7

    .line 534
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    .line 535
    iget-wide v2, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->duration:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x63

    cmp-long p1, v0, v4

    if-lez p1, :cond_0

    move-wide v0, v4

    .line 539
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f11050c

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {p1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setCountText(Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;Ljava/lang/Integer;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f11009c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 550
    :goto_0
    iget-object p1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callCount:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setDetailText(Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;Ljava/lang/Integer;Lcom/android/dialer/calllogutils/PhoneCallDetails;)V
    .locals 6

    .line 507
    iget-object p2, p3, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callLocationAndDate:Ljava/lang/CharSequence;

    .line 517
    iget-object v0, p3, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callTypes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-wide v2, p3, Lcom/android/dialer/calllogutils/PhoneCallDetails;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f110509

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    .line 521
    invoke-direct {p0, p3}, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->getVoicemailDuration(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 518
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 522
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 523
    iget-boolean p3, p3, Lcom/android/dialer/calllogutils/PhoneCallDetails;->isRead:Z

    if-nez p3, :cond_0

    .line 524
    new-instance p3, Landroid/text/style/StyleSpan;

    invoke-direct {p3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 525
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v2, 0x21

    .line 524
    invoke-virtual {v0, p3, v1, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 527
    :cond_0
    iget-object p1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callLocationAndDate:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 529
    :cond_1
    iget-object p1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callLocationAndDate:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private static shouldShowLocation(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private shouldShowYear(J)Z
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 464
    iget-object v0, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 465
    iget-object v2, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 466
    iget-object p1, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getCallDate(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 8

    .line 390
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 392
    iget-wide v3, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->date:J

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/contacts/common/util/DateUtils;->getDayDifference(Landroid/text/format/Time;JJ)I

    move-result v0

    .line 393
    iget-object v1, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callTypes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->getGranularDateTime(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 403
    :cond_0
    iget-wide v3, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->date:J

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 404
    iget-object v0, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f110508

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    iget-wide v6, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->date:J

    .line 405
    invoke-static {v5, v6, v7, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    .line 404
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-ne v0, v3, :cond_2

    .line 410
    iget-object v0, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f11050a

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    iget-wide v6, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->date:J

    .line 411
    invoke-static {v5, v6, v7, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    .line 410
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f110507

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->date:J

    .line 417
    invoke-direct {p0, v5, v6}, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->getGranularDate(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    iget-wide v5, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->date:J

    .line 418
    invoke-static {v2, v5, v6, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    .line 415
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCallLocationAndDate(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mDescriptionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 294
    iget-object v0, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callTypes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 296
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->getCallTypeOrLocation(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 301
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->numberType:I

    .line 303
    invoke-static {v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    const v2, 0x104069f

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->isBlocked:Z

    if-eqz v1, :cond_1

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mDescriptionItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mDescriptionItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->getCallDate(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object p1, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mDescriptionItems:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/dialer/util/DialerUtils;->join(Ljava/lang/Iterable;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getCallTypeOrLocation(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 4

    .line 327
    iget-boolean v0, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->isSpam:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object p1, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f110473

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 329
    :cond_0
    iget-boolean v0, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->isBlocked:Z

    if-eqz v0, :cond_1

    .line 330
    iget-object p1, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f110086

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 335
    iget-object v1, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 336
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    iget-object v2, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v3, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 337
    invoke-virtual {v1, v2, v3}, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->isVoicemailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 339
    invoke-static {p1}, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->shouldShowLocation(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    iget-object v0, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->geocode:Ljava/lang/String;

    goto :goto_0

    .line 341
    :cond_2
    iget v1, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->numberType:I

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 342
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mPhoneTypeLabelForTest:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    iget v1, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->numberType:I

    iget-object v2, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 347
    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 351
    :cond_5
    :goto_0
    iget-object v1, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->namePrimary:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 352
    iget-object v0, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->displayNumber:Ljava/lang/String;

    :cond_6
    return-object v0
.end method

.method public getGranularDateTime(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 5

    .line 436
    iget-object v0, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->date:J

    .line 438
    invoke-direct {p0, v2, v3}, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->getGranularDate(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    iget-wide v3, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->date:J

    const/4 p1, 0x1

    .line 439
    invoke-static {v2, v3, v4, p1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    const p1, 0x7f110507

    .line 436
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setCallDetailsHeader(Landroid/widget/TextView;Lcom/android/dialer/calllogutils/PhoneCallDetails;)V
    .locals 1

    .line 474
    iget-object v0, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->namePrimary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    iget-object p2, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->namePrimary:Ljava/lang/CharSequence;

    goto :goto_0

    .line 476
    :cond_0
    iget-object v0, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->displayNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 477
    iget-object p2, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->displayNumber:Ljava/lang/String;

    goto :goto_0

    .line 479
    :cond_1
    iget-object p2, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f1104be

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 481
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCurrentTimeForTest(J)V
    .locals 0

    .line 485
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    return-void
.end method

.method public setPhoneCallDetails(Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;Lcom/android/dialer/calllogutils/PhoneCallDetails;)V
    .locals 12

    .line 101
    iget-object v0, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllogutils/CallTypeIconsView;

    invoke-virtual {v0}, Lcom/android/dialer/calllogutils/CallTypeIconsView;->clear()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ge v1, v4, :cond_2

    if-nez v1, :cond_1

    .line 108
    iget-object v2, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callTypes:[I

    aget v2, v2, v1

    if-ne v2, v3, :cond_0

    move v2, v5

    goto :goto_1

    :cond_0
    move v2, v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_2
    iget-object v1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllogutils/CallTypeIconsView;

    iget v6, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->features:I

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_3

    move v6, v5

    goto :goto_2

    :cond_3
    move v6, v0

    :goto_2
    invoke-virtual {v1, v6}, Lcom/android/dialer/calllogutils/CallTypeIconsView;->setShowVideo(Z)V

    .line 116
    iget-object v1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllogutils/CallTypeIconsView;

    iget-object v6, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    iget v7, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->features:I

    .line 117
    invoke-static {v6, v7}, Lcom/android/dialer/oem/MotorolaUtils;->shouldShowHdIconInCallLog(Landroid/content/Context;I)Z

    move-result v6

    .line 116
    invoke-virtual {v1, v6}, Lcom/android/dialer/calllogutils/CallTypeIconsView;->setShowHd(Z)V

    .line 118
    iget-object v1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllogutils/CallTypeIconsView;

    iget-object v6, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    iget v7, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->features:I

    .line 119
    invoke-static {v6, v7}, Lcom/android/dialer/oem/MotorolaUtils;->shouldShowWifiIconInCallLog(Landroid/content/Context;I)Z

    move-result v6

    .line 118
    invoke-virtual {v1, v6}, Lcom/android/dialer/calllogutils/CallTypeIconsView;->setShowWifi(Z)V

    .line 120
    iget-object v1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllogutils/CallTypeIconsView;

    invoke-virtual {v1}, Lcom/android/dialer/calllogutils/CallTypeIconsView;->requestLayout()V

    .line 124
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v1

    iget v6, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->features:I

    invoke-virtual {v1, v6}, Lcom/android/tct/common/RttManager;->isRttCallLog(I)Z

    move-result v1

    const/16 v6, 0x8

    if-eqz v1, :cond_5

    .line 125
    iget-object v1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callTypeRtt:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callTypeRtt:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x7f080090

    goto :goto_3

    :cond_4
    const v7, 0x7f08020d

    :goto_3
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 129
    :cond_5
    iget-object v1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callTypeRtt:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    :goto_4
    iget-object v1, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callTypes:[I

    array-length v1, v1

    const/4 v7, 0x0

    if-le v1, v5, :cond_6

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v7

    .line 146
    :goto_5
    invoke-direct {p0, p1, v1, p2}, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->setDetailText(Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;Ljava/lang/Integer;Lcom/android/dialer/calllogutils/PhoneCallDetails;)V

    .line 148
    invoke-direct {p0, p1, v1}, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->setCountText(Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;Ljava/lang/Integer;)V

    .line 151
    iget-object v1, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->accountIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    .line 153
    iget-object v8, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v8, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 156
    :cond_7
    iget-object v1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    :goto_6
    iget-object v1, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    iget-object v8, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v1, v8}, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->getAccountLabel(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v1

    .line 161
    iget-object v8, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->viaNumber:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x2

    if-nez v8, :cond_9

    .line 162
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 163
    iget-object v8, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f1100de

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v1, v11, v0

    iget-object v1, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->viaNumber:Ljava/lang/String;

    aput-object v1, v11, v5

    .line 164
    invoke-virtual {v8, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 167
    :cond_8
    iget-object v1, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f1100dd

    new-array v10, v5, [Ljava/lang/Object;

    iget-object v11, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->viaNumber:Ljava/lang/String;

    aput-object v11, v10, v0

    invoke-virtual {v1, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 170
    :cond_9
    :goto_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 171
    iget-object v6, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callAccountLabel:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v6, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callAccountLabel:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    iget-object v6, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v1, v6}, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->getAccountColor(Landroid/telecom/PhoneAccountHandle;)I

    move-result v1

    if-nez v1, :cond_a

    const v1, 0x7f0600bb

    .line 176
    iget-object v6, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callAccountLabel:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    .line 178
    :cond_a
    iget-object v6, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callAccountLabel:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    .line 181
    :cond_b
    iget-object v1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callAccountLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    :goto_8
    iget-object v1, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->displayNumber:Ljava/lang/String;

    .line 188
    invoke-virtual {p2}, Lcom/android/dialer/calllogutils/PhoneCallDetails;->getPreferredName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 192
    iget-object v6, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextDirection(I)V

    move v6, v0

    goto :goto_9

    .line 195
    :cond_c
    invoke-virtual {p2}, Lcom/android/dialer/calllogutils/PhoneCallDetails;->getPreferredName()Ljava/lang/CharSequence;

    move-result-object v1

    move v6, v5

    .line 198
    :goto_9
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, " "

    .line 199
    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_d

    if-nez v6, :cond_d

    const-string v6, ""

    .line 201
    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 204
    :cond_d
    iget-object v6, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callTypes:[I

    aget v6, v6, v0

    if-ne v6, v3, :cond_e

    iget-boolean v6, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->isRead:Z

    if-nez v6, :cond_e

    .line 205
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 206
    new-instance v8, Landroid/text/style/StyleSpan;

    invoke-direct {v8, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 207
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v10, 0x21

    .line 206
    invoke-virtual {v6, v8, v0, v1, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 208
    iget-object v1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 210
    :cond_e
    iget-object v6, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :goto_a
    invoke-static {}, Lcom/android/incallui/shaken/CallLogVerstat;->getInstance()Lcom/android/incallui/shaken/CallLogVerstat;

    move-result-object v1

    iget-object v6, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    iget v8, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->verstat:I

    iget-object v10, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v8, v10}, Lcom/android/incallui/shaken/CallLogVerstat;->updateCallLogInfo(Landroid/content/Context;ILandroid/widget/TextView;)V

    if-eqz v2, :cond_10

    const/4 v1, 0x7

    .line 221
    iget-object v2, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->voicemailTranscriptionView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 222
    iget-object v1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->voicemailTranscriptionView:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->transcription:Ljava/lang/String;

    .line 223
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_b

    :cond_f
    iget-object v7, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->transcription:Ljava/lang/String;

    .line 222
    :goto_b
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_10
    iget-object v1, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_c

    :cond_11
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 235
    :goto_c
    iget-object v2, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 236
    iget-object v2, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->voicemailTranscriptionView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 237
    iget-object v2, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callLocationAndDate:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 238
    iget-object v2, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callCount:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 246
    iget-object v1, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callTypes:[I

    aget v1, v1, v0

    if-ne v1, v9, :cond_12

    .line 247
    iget-object v1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callLogType:Landroid/widget/ImageView;

    const v2, 0x7f08008c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 250
    :cond_12
    iget-object v1, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callTypes:[I

    aget v1, v1, v0

    if-ne v1, v4, :cond_13

    .line 251
    iget-object v1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callLogType:Landroid/widget/ImageView;

    const v2, 0x7f08008d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 253
    :cond_13
    iget-object v1, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callTypes:[I

    aget v1, v1, v0

    if-ne v1, v5, :cond_14

    .line 254
    iget-object v1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callLogType:Landroid/widget/ImageView;

    const v2, 0x7f08008e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 257
    :cond_14
    iget-object v1, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callTypes:[I

    aget v1, v1, v0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_15

    .line 259
    iget-object v1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callLogType:Landroid/widget/ImageView;

    const v2, 0x7f08008b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 262
    :cond_15
    iget-object v1, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callTypes:[I

    aget v1, v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_16

    .line 263
    iget-object v1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callLogType:Landroid/widget/ImageView;

    const v2, 0x7f08008f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 265
    :cond_16
    iget-object p2, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callTypes:[I

    aget p2, p2, v0

    if-ne p2, v3, :cond_17

    .line 266
    iget-object p1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callLogType:Landroid/widget/ImageView;

    const p2, 0x7f0801fa

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_17
    return-void
.end method

.method public setPhoneTypeLabelForTest(Ljava/lang/CharSequence;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->mPhoneTypeLabelForTest:Ljava/lang/CharSequence;

    return-void
.end method
