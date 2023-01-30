.class public Lcom/android/incallui/shaken/MissedCallNotifierVerstat;
.super Ljava/lang/Object;
.source "MissedCallNotifierVerstat.java"


# static fields
.field private static volatile sInstance:Lcom/android/incallui/shaken/MissedCallNotifierVerstat;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/shaken/MissedCallNotifierVerstat;
    .locals 2

    .line 26
    sget-object v0, Lcom/android/incallui/shaken/MissedCallNotifierVerstat;->sInstance:Lcom/android/incallui/shaken/MissedCallNotifierVerstat;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcom/android/incallui/shaken/MissedCallNotifierVerstat;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/android/incallui/shaken/MissedCallNotifierVerstat;->sInstance:Lcom/android/incallui/shaken/MissedCallNotifierVerstat;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/android/incallui/shaken/MissedCallNotifierVerstat;

    invoke-direct {v1}, Lcom/android/incallui/shaken/MissedCallNotifierVerstat;-><init>()V

    sput-object v1, Lcom/android/incallui/shaken/MissedCallNotifierVerstat;->sInstance:Lcom/android/incallui/shaken/MissedCallNotifierVerstat;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 33
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/incallui/shaken/MissedCallNotifierVerstat;->sInstance:Lcom/android/incallui/shaken/MissedCallNotifierVerstat;

    return-object v0
.end method


# virtual methods
.method public getContentText(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/text/SpannableString;
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 38
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/operatorutils/IOperatorManager;->getOperatorConfig()Lcom/android/operatorutils/OperatorConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/operatorutils/OperatorConfig;->isDefSupportStirForCalllog()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/operatorutils/IOperatorManager;->getVerstatLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 43
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 44
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/operatorutils/IOperatorManager;->getVerstatColorID()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 45
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/16 p3, 0x21

    .line 44
    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0

    .line 39
    :cond_1
    :goto_0
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public updateStatusBarIcon(Landroid/content/Context;ILandroid/app/Notification$Builder;)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 52
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/operatorutils/IOperatorManager;->getOperatorConfig()Lcom/android/operatorutils/OperatorConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/operatorutils/OperatorConfig;->isDefSupportStirForCalllog()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f08010e

    .line 56
    invoke-virtual {p3, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :cond_1
    :goto_0
    return-void
.end method
