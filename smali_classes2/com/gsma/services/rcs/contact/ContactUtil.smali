.class public Lcom/gsma/services/rcs/contact/ContactUtil;
.super Ljava/lang/Object;
.source "ContactUtil.java"


# static fields
.field private static final COUNTRY_AREA_CODE_IDX:I = 0x1

.field private static final COUNTRY_CODE_IDX:I = 0x0

.field public static final COUNTRY_CODE_PREFIX:Ljava/lang/String; = "+"

.field private static final MCC_UNDEFINED:I = 0x0

.field public static final MSISDN_PREFIX_INTERNATIONAL:Ljava/lang/String; = "011"

.field private static final PATTERN_CONTACT:Ljava/util/regex/Pattern;

.field private static final REGEXP_CONTACT:Ljava/lang/String; = "^011\\d{7,15}$|^[+]?\\d{7,15}$|^\\d{7,15}$"

.field private static final sCountryCodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lcom/gsma/services/rcs/contact/ContactUtil;

.field private static final sLogger:Lcom/gsma/rcs/utils/logger/Logger;


# instance fields
.field private mCountryAreaCode:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private final mCtx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^011\\d{7,15}$|^[+]?\\d{7,15}$|^\\d{7,15}$"

    .line 86
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->PATTERN_CONTACT:Ljava/util/regex/Pattern;

    .line 102
    const-class v0, Lcom/gsma/services/rcs/contact/ContactUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gsma/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    .line 112
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactUtil$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/contact/ContactUtil$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->sCountryCodes:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCtx:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/contact/ContactUtil;
    .locals 2

    .line 372
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->sInstance:Lcom/gsma/services/rcs/contact/ContactUtil;

    if-eqz v0, :cond_0

    .line 373
    sget-object p0, Lcom/gsma/services/rcs/contact/ContactUtil;->sInstance:Lcom/gsma/services/rcs/contact/ContactUtil;

    return-object p0

    .line 375
    :cond_0
    const-class v0, Lcom/gsma/services/rcs/contact/ContactUtil;

    monitor-enter v0

    .line 376
    :try_start_0
    sget-object v1, Lcom/gsma/services/rcs/contact/ContactUtil;->sInstance:Lcom/gsma/services/rcs/contact/ContactUtil;

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    .line 380
    new-instance v1, Lcom/gsma/services/rcs/contact/ContactUtil;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/contact/ContactUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/gsma/services/rcs/contact/ContactUtil;->sInstance:Lcom/gsma/services/rcs/contact/ContactUtil;

    goto :goto_0

    .line 378
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 382
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    sget-object p0, Lcom/gsma/services/rcs/contact/ContactUtil;->sInstance:Lcom/gsma/services/rcs/contact/ContactUtil;

    return-object p0

    :catchall_0
    move-exception p0

    .line 382
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private isDigit(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 548
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 549
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isVzwOperation()Z
    .locals 3

    .line 700
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Verizon"

    .line 701
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 704
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const-string v2, "31000"

    .line 705
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "310004"

    .line 706
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "310480"

    .line 707
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "311480"

    .line 708
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 711
    :cond_1
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v1, "The Operation is not vzw"

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private tryToDetermineAndCacheCountryAndAreaCodes()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;
        }
    .end annotation

    .line 557
    const-class v0, Lcom/gsma/services/rcs/contact/ContactUtil;

    monitor-enter v0

    .line 558
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 559
    monitor-exit v0

    return-void

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 564
    iget v2, v1, Landroid/content/res/Configuration;->mcc:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget v2, v1, Landroid/content/res/Configuration;->mcc:I

    if-eq v2, v3, :cond_1

    iget v2, v1, Landroid/content/res/Configuration;->mcc:I

    if-ne v2, v3, :cond_2

    :cond_1
    const/16 v2, 0x136

    .line 565
    iput v2, v1, Landroid/content/res/Configuration;->mcc:I

    .line 567
    :cond_2
    iget v2, v1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_3

    iget v2, v1, Landroid/content/res/Configuration;->mnc:I

    if-eq v2, v3, :cond_3

    iget v2, v1, Landroid/content/res/Configuration;->mnc:I

    if-ne v2, v3, :cond_4

    :cond_3
    const/16 v2, 0x104

    .line 568
    iput v2, v1, Landroid/content/res/Configuration;->mnc:I

    .line 570
    :cond_4
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactUtil;->sCountryCodes:Landroid/util/SparseArray;

    iget v4, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_6

    const/4 v1, 0x0

    .line 575
    aget-object v1, v2, v1

    const-string v4, "+"

    .line 576
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 577
    iput-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    .line 578
    array-length v1, v2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    .line 580
    aget-object v1, v2, v3

    iput-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    .line 582
    :cond_5
    monitor-exit v0

    return-void

    .line 572
    :cond_6
    new-instance v2, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get mobile country code ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    .line 582
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public formatContact(Ljava/lang/String;)Lcom/gsma/services/rcs/contact/ContactId;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;
        }
    .end annotation

    .line 461
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 466
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/contact/ContactUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v1, "310"

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 476
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactUtil;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v1, "formatContact(),contact start with 310260"

    invoke-virtual {p1, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 477
    new-instance p1, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 484
    :cond_2
    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 485
    invoke-direct {p0}, Lcom/gsma/services/rcs/contact/ContactUtil;->tryToDetermineAndCacheCountryAndAreaCodes()V

    .line 488
    :cond_3
    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/contact/ContactUtil;->isDigit(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 489
    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCtx:Landroid/content/Context;

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    const-string v3, "RCS"

    .line 490
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "areaCode"

    const-string v3, ""

    .line 492
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 494
    new-instance p1, Lcom/gsma/services/rcs/contact/ContactId;

    iget-object v2, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 496
    :cond_4
    sget-object v1, Lcom/gsma/services/rcs/contact/ContactUtil;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v2, "areaCode is null"

    invoke-virtual {v1, v2}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 502
    :cond_5
    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/contact/ContactUtil;->isDigit(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    .line 503
    new-instance p1, Lcom/gsma/services/rcs/contact/ContactId;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_6
    const-string v1, "+"

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 507
    new-instance p1, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_7
    const-string v2, "011"

    .line 510
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 513
    invoke-direct {p0}, Lcom/gsma/services/rcs/contact/ContactUtil;->isVzwOperation()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 514
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 516
    :cond_8
    new-instance p1, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 526
    :cond_9
    iget-object p1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 528
    new-instance p1, Lcom/gsma/services/rcs/contact/ContactId;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 531
    :cond_a
    iget-object p1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 533
    new-instance p1, Lcom/gsma/services/rcs/contact/ContactId;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    .line 534
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 533
    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 539
    :cond_b
    iget-object p1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 541
    new-instance p1, Lcom/gsma/services/rcs/contact/ContactId;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 543
    :cond_c
    new-instance p1, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public getMyCountryAreaCode()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 622
    invoke-direct {p0}, Lcom/gsma/services/rcs/contact/ContactUtil;->tryToDetermineAndCacheCountryAndAreaCodes()V

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMyCountryCode()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 593
    invoke-direct {p0}, Lcom/gsma/services/rcs/contact/ContactUtil;->tryToDetermineAndCacheCountryAndAreaCodes()V

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVCard(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 642
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_6

    :try_start_1
    const-string p1, "display_name"

    .line 647
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    const-string v2, "lookup"

    .line 649
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 650
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    if-eqz v1, :cond_0

    .line 682
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 653
    :cond_1
    :try_start_2
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 654
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 656
    iget-object v3, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCtx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    .line 682
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    .line 661
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0

    .line 662
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    .line 663
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 665
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 667
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".vcf"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 668
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 670
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 672
    :cond_4
    new-instance p1, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {p1, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 673
    invoke-virtual {p1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 674
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 675
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_5

    .line 682
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    .line 644
    :cond_6
    :try_start_4
    new-instance v0, Landroid/database/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot query VCard for URI=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 678
    :goto_0
    :try_start_5
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    if-eqz v0, :cond_7

    .line 682
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p1
.end method

.method public isMyCountryCodeDefined()Z
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidContact(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;
        }
    .end annotation

    .line 420
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 423
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/contact/ContactUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 424
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "+"

    .line 428
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "011"

    .line 431
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 438
    :cond_3
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 439
    invoke-direct {p0}, Lcom/gsma/services/rcs/contact/ContactUtil;->tryToDetermineAndCacheCountryAndAreaCodes()V

    .line 442
    :cond_4
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 445
    :cond_5
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 449
    :cond_6
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/contact/ContactUtil;->isDigit(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public resetCountryCode()V
    .locals 3

    .line 694
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset mCountryCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 695
    iput-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method public stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "[() -]"

    const-string v1, ""

    .line 393
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 394
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->PATTERN_CONTACT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "+1310260"

    .line 399
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "310260"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 400
    :cond_2
    :goto_0
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v1, "stripSeparators(),contact start with 310260 or +1310260"

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    return-object p1
.end method
