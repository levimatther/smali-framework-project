.class public Lcom/android/voicemail/impl/utils/VvmDumpHandler;
.super Ljava/lang/Object;
.source "VvmDumpHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 30
    new-instance v0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "******* OmtpVvm *******"

    .line 31
    invoke-virtual {v0, p2}, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "======= Configs ======="

    .line 32
    invoke-virtual {v0, p2}, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->increaseIndent()V

    .line 35
    const-class p2, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telecom/TelecomManager;

    invoke-virtual {p2}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 36
    new-instance v2, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    invoke-direct {v2, p0, v1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 37
    invoke-virtual {v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0}, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->decreaseIndent()V

    const-string p0, "======== Logs ========="

    .line 40
    invoke-virtual {v0, p0}, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 41
    invoke-static {p1, v0, p3}, Lcom/android/voicemail/impl/VvmLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method
