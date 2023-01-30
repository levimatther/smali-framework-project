.class Lcom/android/incallui/incall/impl/InCallFragment$6;
.super Ljava/lang/Object;
.source "InCallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/incall/impl/InCallFragment;->addCallClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/incall/impl/InCallFragment;

.field final synthetic val$mAddCallDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/incallui/incall/impl/InCallFragment;Landroid/app/Dialog;)V
    .locals 0

    .line 2000
    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$6;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    iput-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment$6;->val$mAddCallDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 2003
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x8

    if-ne p2, p1, :cond_1

    .line 2007
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$6;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1500(Lcom/android/incallui/incall/impl/InCallFragment;)Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    move-result-object p1

    sget-object v0, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->BY_DIALPAD:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    invoke-interface {p1, v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->addCallClicked(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;)V

    .line 2008
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$6;->val$mAddCallDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    const/16 p1, 0x9

    if-ne p2, p1, :cond_2

    .line 2011
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$6;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1500(Lcom/android/incallui/incall/impl/InCallFragment;)Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    move-result-object p1

    sget-object v0, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->BY_CONTACT:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    invoke-interface {p1, v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->addCallClicked(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;)V

    .line 2012
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$6;->val$mAddCallDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    const/16 p1, 0xa

    if-ne p2, p1, :cond_3

    .line 2015
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$6;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$1500(Lcom/android/incallui/incall/impl/InCallFragment;)Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    move-result-object p1

    sget-object p2, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;->BY_CALL_LOG:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;

    invoke-interface {p1, p2}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->addCallClicked(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate$CallWay;)V

    .line 2016
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$6;->val$mAddCallDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    return p3
.end method
