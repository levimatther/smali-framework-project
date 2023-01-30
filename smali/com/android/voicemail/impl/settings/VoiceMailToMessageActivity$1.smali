.class Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity$1;
.super Landroid/os/AsyncTask;
.source "VoiceMailToMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;

.field final synthetic val$emailAddressList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;Ljava/util/List;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity$1;->this$0:Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;

    iput-object p2, p0, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity$1;->val$emailAddressList:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 68
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity$1;->this$0:Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;

    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->access$000(Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {p1}, Lcom/android/voicemail/impl/utils/StringUtils;->isEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 71
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 74
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity$1;->val$emailAddressList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_1
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity$1;->val$emailAddressList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/operatorutils/IOperatorManager;->updateEmailAddress(Ljava/util/List;)Z

    move-result p1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doInBackground result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceMailToMessageActivity"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "VoiceMailToMessageActivity"

    const-string v1, "onPostExecute success"

    .line 84
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 86
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity$1;->this$0:Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;

    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->access$100(Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object p1

    iget-object v1, p0, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity$1;->val$emailAddressList:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/tcl/netlibrary/config/VVMConfig;->setEmailAddressList(Ljava/util/List;)V

    .line 90
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity$1;->this$0:Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;

    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->access$100(Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;)Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f110431

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 91
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity$1;->this$0:Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;

    invoke-virtual {p1}, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->finish()V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity$1;->this$0:Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;

    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->access$000(Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/voicemail/impl/utils/StringUtils;->isEmail(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity$1;->this$0:Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;

    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->access$100(Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;)Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1102c6

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity$1;->this$0:Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;

    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->access$100(Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;)Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f110432

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
