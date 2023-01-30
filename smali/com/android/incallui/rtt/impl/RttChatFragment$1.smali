.class Lcom/android/incallui/rtt/impl/RttChatFragment$1;
.super Ljava/lang/Object;
.source "RttChatFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/rtt/impl/RttChatFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/rtt/impl/RttChatFragment;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$1;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 330
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_2

    .line 336
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$1;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    .line 337
    invoke-static {p1}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$000(Lcom/android/incallui/rtt/impl/RttChatFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 338
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$1;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p1}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$100(Lcom/android/incallui/rtt/impl/RttChatFragment;)Lcom/android/incallui/rtt/impl/RttChatAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->retrieveLastLocalMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 340
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$1;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p2, p1}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$200(Lcom/android/incallui/rtt/impl/RttChatFragment;Ljava/lang/String;)V

    .line 341
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$1;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p1}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$300(Lcom/android/incallui/rtt/impl/RttChatFragment;)Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;

    move-result-object p1

    const-string p2, "\u0008"

    invoke-interface {p1, p2}, Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;->onLocalMessage(Ljava/lang/String;)V

    return v1

    :cond_0
    return v0

    .line 347
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    :cond_2
    return v0
.end method
