.class public Lcom/android/incallui/shaken/CallLogVerstat;
.super Ljava/lang/Object;
.source "CallLogVerstat.java"


# static fields
.field public static final KEY_EXTRA_VERSTAT:Ljava/lang/String; = "verstat"

.field public static final VERSTAT_VERIFICATION_NONE:I = 0x0

.field public static final VERSTAT_VERIFICATION_PASS:I = 0x1

.field private static volatile sInstance:Lcom/android/incallui/shaken/CallLogVerstat;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/shaken/CallLogVerstat;
    .locals 2

    .line 27
    sget-object v0, Lcom/android/incallui/shaken/CallLogVerstat;->sInstance:Lcom/android/incallui/shaken/CallLogVerstat;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/android/incallui/shaken/CallLogVerstat;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/android/incallui/shaken/CallLogVerstat;->sInstance:Lcom/android/incallui/shaken/CallLogVerstat;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/android/incallui/shaken/CallLogVerstat;

    invoke-direct {v1}, Lcom/android/incallui/shaken/CallLogVerstat;-><init>()V

    sput-object v1, Lcom/android/incallui/shaken/CallLogVerstat;->sInstance:Lcom/android/incallui/shaken/CallLogVerstat;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/incallui/shaken/CallLogVerstat;->sInstance:Lcom/android/incallui/shaken/CallLogVerstat;

    return-object v0
.end method


# virtual methods
.method public updateCallDetailInfo(Landroid/content/Context;ILandroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 53
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/operatorutils/IOperatorManager;->getOperatorConfig()Lcom/android/operatorutils/OperatorConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/operatorutils/OperatorConfig;->isDefSupportStirForCalllog()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/operatorutils/IOperatorManager;->getVerstatIconID()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    const/16 v0, 0x14

    .line 57
    invoke-virtual {p1, p2, p2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    invoke-virtual {p4}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 59
    invoke-virtual {p4, v1, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p3, v1, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateCallLogInfo(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 2

    .line 38
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/operatorutils/IOperatorManager;->getOperatorConfig()Lcom/android/operatorutils/OperatorConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/operatorutils/OperatorConfig;->isDefSupportStirForCalllog()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/operatorutils/IOperatorManager;->getVerstatIconID()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    const/16 v0, 0x14

    .line 43
    invoke-virtual {p1, p2, p2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 44
    invoke-virtual {p3, v1, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x5

    .line 45
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
