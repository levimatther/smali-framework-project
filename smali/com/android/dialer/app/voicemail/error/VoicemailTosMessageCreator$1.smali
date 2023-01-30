.class Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$1;
.super Ljava/lang/Object;
.source "VoicemailTosMessageCreator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->maybeCreateTosMessage()Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$1;->this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "VoicemailTosMessageCreator.maybeShowTosMessage"

    const-string v1, "decline clicked"

    .line 98
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    new-instance p1, Landroid/telecom/PhoneAccountHandle;

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$1;->this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

    .line 101
    invoke-static {v0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->access$000(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)Lcom/android/dialer/app/voicemail/error/VoicemailStatus;

    move-result-object v0

    iget-object v0, v0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->phoneAccountComponentName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$1;->this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

    .line 102
    invoke-static {v1}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->access$000(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)Lcom/android/dialer/app/voicemail/error/VoicemailStatus;

    move-result-object v1

    iget-object v1, v1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->phoneAccountId:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$1;->this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

    invoke-static {v0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->access$100(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)V

    .line 104
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$1;->this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

    invoke-static {v0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->access$200(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method
