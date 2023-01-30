.class public Lcom/android/dialer/widget/MessageFragment$Builder;
.super Ljava/lang/Object;
.source "MessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/widget/MessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private charLimit:I

.field private messages:[Ljava/lang/String;

.field private showSendIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 158
    iput v0, p0, Lcom/android/dialer/widget/MessageFragment$Builder;->charLimit:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/widget/MessageFragment$Builder;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/android/dialer/widget/MessageFragment$Builder;->charLimit:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/dialer/widget/MessageFragment$Builder;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/android/dialer/widget/MessageFragment$Builder;->showSendIcon:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/dialer/widget/MessageFragment$Builder;)[Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/dialer/widget/MessageFragment$Builder;->messages:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/dialer/widget/MessageFragment;
    .locals 1

    .line 182
    invoke-static {p0}, Lcom/android/dialer/widget/MessageFragment;->access$300(Lcom/android/dialer/widget/MessageFragment$Builder;)Lcom/android/dialer/widget/MessageFragment;

    move-result-object v0

    return-object v0
.end method

.method public setCharLimit(I)Lcom/android/dialer/widget/MessageFragment$Builder;
    .locals 0

    .line 177
    iput p1, p0, Lcom/android/dialer/widget/MessageFragment$Builder;->charLimit:I

    return-object p0
.end method

.method public varargs setMessages([Ljava/lang/String;)Lcom/android/dialer/widget/MessageFragment$Builder;
    .locals 2

    .line 166
    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 167
    iput-object p1, p0, Lcom/android/dialer/widget/MessageFragment$Builder;->messages:[Ljava/lang/String;

    return-object p0
.end method

.method public showSendIcon()Lcom/android/dialer/widget/MessageFragment$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lcom/android/dialer/widget/MessageFragment$Builder;->showSendIcon:Z

    return-object p0
.end method
