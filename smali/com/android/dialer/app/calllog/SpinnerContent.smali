.class public Lcom/android/dialer/app/calllog/SpinnerContent;
.super Ljava/lang/Object;
.source "SpinnerContent.java"


# static fields
.field private static final INDEX_CALL_TYPE_ALL:I = 0x0

.field private static final INDEX_CALL_TYPE_INCOMING:I = 0x1

.field private static final INDEX_CALL_TYPE_MISSED:I = 0x3

.field private static final INDEX_CALL_TYPE_OUTGOING:I = 0x2

.field private static final INDEX_CALL_TYPE_VOICEMAIL:I = 0x4

.field private static final INVALID_SIM_SLOT_INDEX:I = -0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field public final label:Ljava/lang/String;

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/android/dialer/app/calllog/SpinnerContent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/app/calllog/SpinnerContent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/android/dialer/app/calllog/SpinnerContent;->value:I

    .line 64
    iput-object p2, p0, Lcom/android/dialer/app/calllog/SpinnerContent;->label:Ljava/lang/String;

    return-void
.end method

.method public static setSpinnerContentValue(Landroid/widget/Spinner;I)V
    .locals 4

    .line 52
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 53
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/app/calllog/SpinnerContent;

    .line 54
    iget v3, v2, Lcom/android/dialer/app/calllog/SpinnerContent;->value:I

    if-ne v3, p1, :cond_0

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 56
    sget-object p0, Lcom/android/dialer/app/calllog/SpinnerContent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set selection for spinner("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") with the value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setupSlotFilterContent(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/dialer/app/calllog/SpinnerContent;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-static {p0}, Lcom/android/dialer/calllogutils/PhoneAccountUtils;->getSubscriptionPhoneAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    new-instance v2, Lcom/android/dialer/app/calllog/SpinnerContent;

    const/4 v3, -0x1

    const v4, 0x7f1100db

    .line 81
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/dialer/app/calllog/SpinnerContent;-><init>(ILjava/lang/String;)V

    .line 80
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 84
    invoke-static {p0, v3}, Lcom/android/dialer/calllogutils/PhoneAccountUtils;->getAccountLabel(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 87
    new-instance v4, Lcom/android/dialer/app/calllog/SpinnerContent;

    invoke-direct {v4, v2, v3}, Lcom/android/dialer/app/calllog/SpinnerContent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static setupStatusFilterContent(Landroid/content/Context;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/dialer/app/calllog/SpinnerContent;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    move p1, v0

    .line 102
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v0, :cond_1

    :goto_2
    move v4, v6

    goto :goto_3

    :cond_1
    const v3, 0x7f1100e0

    .line 125
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v4, v0

    goto :goto_3

    :cond_2
    const v3, 0x7f1100d8

    .line 121
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    const v3, 0x7f1100da

    .line 117
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v4, v5

    goto :goto_3

    :cond_4
    const v3, 0x7f1100d5

    .line 113
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v4, v7

    goto :goto_3

    :cond_5
    const v3, 0x7f1100cb

    .line 109
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 128
    :goto_3
    new-instance v5, Lcom/android/dialer/app/calllog/SpinnerContent;

    invoke-direct {v5, v4, v3}, Lcom/android/dialer/app/calllog/SpinnerContent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/dialer/app/calllog/SpinnerContent;->label:Ljava/lang/String;

    return-object v0
.end method
