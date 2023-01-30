.class Lcom/android/contacts/common/dialog/CallSubjectDialog$4;
.super Ljava/lang/Object;
.source "CallSubjectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/dialog/CallSubjectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 150
    iget-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$100(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    new-instance v0, Lcom/android/dialer/callintent/CallIntentBuilder;

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    .line 152
    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$500(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_SUBJECT_DIALOG:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    .line 153
    invoke-static {v1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$400(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/callintent/CallIntentBuilder;->setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/callintent/CallIntentBuilder;

    move-result-object v0

    .line 154
    invoke-virtual {v0, p1}, Lcom/android/dialer/callintent/CallIntentBuilder;->setCallSubject(Ljava/lang/String;)Lcom/android/dialer/callintent/CallIntentBuilder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    const-class v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 158
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$600(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$600(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$700(Lcom/android/contacts/common/dialog/CallSubjectDialog;Ljava/util/List;)V

    .line 160
    iget-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-virtual {p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->finish()V

    return-void
.end method
