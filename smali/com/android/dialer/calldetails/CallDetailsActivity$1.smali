.class Lcom/android/dialer/calldetails/CallDetailsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CallDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calldetails/CallDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/calldetails/CallDetailsActivity;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$1;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "name_view"

    .line 207
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$1;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-static {v1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$000(Lcom/android/dialer/calldetails/CallDetailsActivity;)Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;

    .line 209
    invoke-virtual {v1, v0}, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->setNameView(Ljava/lang/String;)V

    const-string v0, "contactUri"

    .line 211
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$1;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->setContactPhoto(Landroid/content/Context;Landroid/net/Uri;)V

    .line 214
    :cond_0
    iget-object p2, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$1;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-static {p2}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$200(Lcom/android/dialer/calldetails/CallDetailsActivity;)Landroid/widget/MenuBar;

    move-result-object p2

    const v0, 0x7f110005

    const v1, 0x7f11000c

    iget-object v3, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$1;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-static {v3}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$100(Lcom/android/dialer/calldetails/CallDetailsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 215
    iget-object p2, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$1;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-static {p2}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$200(Lcom/android/dialer/calldetails/CallDetailsActivity;)Landroid/widget/MenuBar;

    move-result-object p2

    const/4 v0, 0x2

    .line 216
    invoke-static {p1}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 215
    invoke-static {p1, p2, v0, v1}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    return-void
.end method
