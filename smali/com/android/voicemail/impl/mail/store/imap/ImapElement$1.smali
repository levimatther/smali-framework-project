.class final Lcom/android/voicemail/impl/mail/store/imap/ImapElement$1;
.super Lcom/android/voicemail/impl/mail/store/imap/ImapElement;
.source "ImapElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/mail/store/imap/ImapElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public equalsForTest(Lcom/android/voicemail/impl/mail/store/imap/ImapElement;)Z
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->equalsForTest(Lcom/android/voicemail/impl/mail/store/imap/ImapElement;)Z

    move-result p1

    return p1
.end method

.method public isList()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isString()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[NO ELEMENT]"

    return-object v0
.end method
