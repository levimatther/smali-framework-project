.class final Lcom/android/voicemail/impl/mail/store/imap/ImapList$1;
.super Lcom/android/voicemail/impl/mail/store/imap/ImapList;
.source "ImapList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/mail/store/imap/ImapList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;-><init>()V

    return-void
.end method


# virtual methods
.method add(Lcom/android/voicemail/impl/mail/store/imap/ImapElement;)V
    .locals 0

    .line 34
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public destroy()V
    .locals 0

    return-void
.end method
