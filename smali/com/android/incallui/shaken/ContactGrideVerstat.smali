.class public Lcom/android/incallui/shaken/ContactGrideVerstat;
.super Ljava/lang/Object;
.source "ContactGrideVerstat.java"


# static fields
.field private static final ID:Ljava/lang/String; = "id"

.field private static final KEY_EXTRA_VERSTAT:Ljava/lang/String; = "VerstatVerificationStatus"

.field private static final MTK_KEY_EXTRA_VERSTAT:Ljava/lang/String; = "verstat"

.field private static final MTK_VERSTAT_VERIFICATION_FAIL:I = -0x1

.field private static final NAME_ID:Ljava/lang/String; = "contactgrid_contact_name"

.field private static final TAG:Ljava/lang/String;

.field private static final VERSTAT_VERIFICATION_FAIL:I = 0x2

.field private static final VERSTAT_VERIFICATION_NONE:I = 0x0

.field private static final VERSTAT_VERIFICATION_PASS:I = 0x1

.field private static volatile sInstance:Lcom/android/incallui/shaken/ContactGrideVerstat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/android/incallui/shaken/ContactGrideVerstat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/shaken/ContactGrideVerstat;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/shaken/ContactGrideVerstat;
    .locals 2

    .line 38
    sget-object v0, Lcom/android/incallui/shaken/ContactGrideVerstat;->sInstance:Lcom/android/incallui/shaken/ContactGrideVerstat;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lcom/android/incallui/shaken/ContactGrideVerstat;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/android/incallui/shaken/ContactGrideVerstat;->sInstance:Lcom/android/incallui/shaken/ContactGrideVerstat;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/android/incallui/shaken/ContactGrideVerstat;

    invoke-direct {v1}, Lcom/android/incallui/shaken/ContactGrideVerstat;-><init>()V

    sput-object v1, Lcom/android/incallui/shaken/ContactGrideVerstat;->sInstance:Lcom/android/incallui/shaken/ContactGrideVerstat;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/incallui/shaken/ContactGrideVerstat;->sInstance:Lcom/android/incallui/shaken/ContactGrideVerstat;

    return-object v0
.end method


# virtual methods
.method public onViewCreated(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 50
    sget-object p1, Lcom/android/incallui/shaken/ContactGrideVerstat;->TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "onViewCreated, context is null."

    invoke-static {p1, v0, p2}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "contactgrid_contact_name"

    const-string v4, "id"

    .line 56
    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    .line 58
    sget-object p1, Lcom/android/incallui/shaken/ContactGrideVerstat;->TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "onViewCreated, nameView is null."

    invoke-static {p1, v0, p2}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 61
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    .line 63
    sget-object p1, Lcom/android/incallui/shaken/ContactGrideVerstat;->TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "onViewCreated, parentView is null."

    invoke-static {p1, v0, p2}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 66
    :cond_2
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 67
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p2

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0112

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090328

    .line 70
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f090329

    .line 71
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 73
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/operatorutils/IOperatorManager;->getVerstatIconID()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/operatorutils/IOperatorManager;->isVerstatCustomColorForLabel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/operatorutils/IOperatorManager;->getVerstatColorID()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public setPrimary(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 88
    instance-of v1, p3, Lcom/android/incallui/incall/impl/InCallFragment;

    if-eqz v1, :cond_1

    .line 89
    check-cast p3, Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-virtual {p3}, Lcom/android/incallui/incall/impl/InCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    instance-of v1, p3, Lcom/android/incallui/answer/impl/AnswerFragment;

    if-eqz v1, :cond_2

    .line 91
    check-cast p3, Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-virtual {p3}, Lcom/android/incallui/answer/impl/AnswerFragment;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_2
    instance-of v1, p3, Lcom/android/incallui/video/impl/VideoCallFragment;

    if-eqz v1, :cond_3

    .line 93
    check-cast p3, Lcom/android/incallui/video/impl/VideoCallFragment;

    invoke-virtual {p3}, Lcom/android/incallui/video/impl/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    :cond_3
    :goto_0
    const/4 p3, 0x0

    if-nez v0, :cond_4

    .line 96
    sget-object p1, Lcom/android/incallui/shaken/ContactGrideVerstat;->TAG:Ljava/lang/String;

    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "setPrimary, view is null"

    invoke-static {p1, p3, p2}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    const v1, 0x7f090329

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090328

    .line 100
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_e

    if-nez v0, :cond_5

    goto/16 :goto_4

    :cond_5
    const-string v2, ""

    const/16 v3, 0x8

    if-nez p2, :cond_6

    .line 105
    instance-of v4, p2, Lcom/android/incallui/call/DialerCall;

    if-nez v4, :cond_6

    .line 106
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 112
    :cond_6
    check-cast p2, Lcom/android/incallui/call/DialerCall;

    .line 113
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_8

    .line 114
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_7

    goto :goto_1

    .line 136
    :cond_7
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 115
    :cond_8
    :goto_1
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/operatorutils/IOperatorManager;->getVerstatLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_d

    const-string v4, "VerstatVerificationStatus"

    .line 120
    invoke-virtual {p2, v4, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "verstat"

    .line 121
    invoke-virtual {p2, v5, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-eqz v4, :cond_9

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    :cond_9
    if-eqz p2, :cond_c

    const/4 v5, -0x1

    if-ne p2, v5, :cond_a

    goto :goto_2

    :cond_a
    const/4 v2, 0x1

    if-eq v4, v2, :cond_b

    if-ne p2, v2, :cond_d

    .line 130
    :cond_b
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/operatorutils/IOperatorManager;->getVerstatLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 125
    :cond_c
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d
    :goto_3
    return-void

    .line 102
    :cond_e
    :goto_4
    sget-object p1, Lcom/android/incallui/shaken/ContactGrideVerstat;->TAG:Ljava/lang/String;

    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "setPrimary, textView is null"

    invoke-static {p1, p3, p2}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
