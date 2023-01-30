.class Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$2;
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

    .line 109
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$2;->this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "VoicemailTosMessageCreator.maybeShowTosMessage"

    const-string v1, "accept clicked"

    .line 112
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$2;->this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

    invoke-static {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->access$300(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)V

    .line 114
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$2;->this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

    invoke-static {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->access$400(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)V

    .line 115
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$2;->this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

    invoke-static {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->access$500(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;->refresh()V

    return-void
.end method
