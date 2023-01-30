.class Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;
.super Ljava/lang/Object;
.source "SelectPhoneAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 141
    iget-object p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->access$002(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Z)Z

    .line 142
    iget-object p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-static {p1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->access$100(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 143
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_selected_account_handle"

    .line 144
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 146
    iget-object p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-static {p1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->access$200(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Z

    move-result p1

    const-string v1, "extra_set_default"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    iget-object p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-static {p1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->access$300(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "extra_call_id"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-static {p1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->access$400(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-static {p1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->access$400(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;->onReceiveResult(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
