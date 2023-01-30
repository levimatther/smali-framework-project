.class public Lcom/android/voicemail/impl/protocol/CvvmProtocol;
.super Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;
.source "CvvmProtocol.java"


# static fields
.field private static IMAP_CHANGE_TUI_PWD_FORMAT:Ljava/lang/String; = "CHANGE_TUI_PWD PWD=%1$s OLD_PWD=%2$s"

.field private static IMAP_CHANGE_VM_LANG_FORMAT:Ljava/lang/String; = "CHANGE_VM_LANG Lang=%1$s"

.field private static IMAP_CLOSE_NUT:Ljava/lang/String; = "CLOSE_NUT"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;-><init>()V

    return-void
.end method


# virtual methods
.method public createMessageSender(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;SLjava/lang/String;)Lcom/android/voicemail/impl/sms/OmtpMessageSender;
    .locals 1

    .line 42
    new-instance v0, Lcom/android/voicemail/impl/sms/OmtpCvvmMessageSender;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/voicemail/impl/sms/OmtpCvvmMessageSender;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;SLjava/lang/String;)V

    return-object v0
.end method

.method public getCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "XCHANGE_TUI_PWD PWD=%1$s OLD_PWD=%2$s"

    if-ne p1, v0, :cond_0

    .line 49
    sget-object p1, Lcom/android/voicemail/impl/protocol/CvvmProtocol;->IMAP_CHANGE_TUI_PWD_FORMAT:Ljava/lang/String;

    return-object p1

    :cond_0
    const-string v0, "XCLOSE_NUT"

    if-ne p1, v0, :cond_1

    .line 52
    sget-object p1, Lcom/android/voicemail/impl/protocol/CvvmProtocol;->IMAP_CLOSE_NUT:Ljava/lang/String;

    return-object p1

    :cond_1
    const-string v0, "XCHANGE_VM_LANG LANG=%1$s"

    if-ne p1, v0, :cond_2

    .line 55
    sget-object p1, Lcom/android/voicemail/impl/protocol/CvvmProtocol;->IMAP_CHANGE_VM_LANG_FORMAT:Ljava/lang/String;

    return-object p1

    .line 57
    :cond_2
    invoke-super {p0, p1}, Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;->getCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
