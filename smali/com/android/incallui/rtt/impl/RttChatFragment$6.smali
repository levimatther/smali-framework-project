.class Lcom/android/incallui/rtt/impl/RttChatFragment$6;
.super Ljava/lang/Object;
.source "RttChatFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/rtt/impl/RttChatFragment;->addCallClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

.field final synthetic val$mAddCallDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/incallui/rtt/impl/RttChatFragment;Landroid/app/Dialog;)V
    .locals 0

    .line 1694
    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$6;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$6;->val$mAddCallDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1697
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x8

    if-ne p2, p1, :cond_1

    .line 1701
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$6;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p1}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$1200(Lcom/android/incallui/rtt/impl/RttChatFragment;)Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    move-result-object p1

    sget-object v0, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->BY_DIALPAD:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    invoke-interface {p1, v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->addCallClicked(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;)V

    .line 1702
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$6;->val$mAddCallDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    const/16 p1, 0x9

    if-ne p2, p1, :cond_2

    .line 1705
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$6;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p1}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$1200(Lcom/android/incallui/rtt/impl/RttChatFragment;)Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    move-result-object p1

    sget-object v0, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->BY_CONTACT:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    invoke-interface {p1, v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->addCallClicked(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;)V

    .line 1706
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$6;->val$mAddCallDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    const/16 p1, 0xa

    if-ne p2, p1, :cond_3

    .line 1709
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$6;->this$0:Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-static {p1}, Lcom/android/incallui/rtt/impl/RttChatFragment;->access$1200(Lcom/android/incallui/rtt/impl/RttChatFragment;)Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    move-result-object p1

    sget-object p2, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->BY_CALL_LOG:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    invoke-interface {p1, p2}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->addCallClicked(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;)V

    .line 1710
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatFragment$6;->val$mAddCallDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    return p3
.end method
