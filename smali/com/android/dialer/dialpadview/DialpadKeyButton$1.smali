.class Lcom/android/dialer/dialpadview/DialpadKeyButton$1;
.super Ljava/lang/Object;
.source "DialpadKeyButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/dialpadview/DialpadKeyButton;->onHoverEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpadview/DialpadKeyButton;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpadview/DialpadKeyButton;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton$1;->this$0:Lcom/android/dialer/dialpadview/DialpadKeyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton$1;->this$0:Lcom/android/dialer/dialpadview/DialpadKeyButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->access$000(Lcom/android/dialer/dialpadview/DialpadKeyButton;Z)V

    .line 158
    iget-object v0, p0, Lcom/android/dialer/dialpadview/DialpadKeyButton$1;->this$0:Lcom/android/dialer/dialpadview/DialpadKeyButton;

    invoke-static {v0}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->access$100(Lcom/android/dialer/dialpadview/DialpadKeyButton;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
