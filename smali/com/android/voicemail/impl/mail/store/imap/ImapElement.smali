.class public abstract Lcom/android/voicemail/impl/mail/store/imap/ImapElement;
.super Ljava/lang/Object;
.source "ImapElement.java"


# static fields
.field public static final NONE:Lcom/android/voicemail/impl/mail/store/imap/ImapElement;


# instance fields
.field private mDestroyed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/android/voicemail/impl/mail/store/imap/ImapElement$1;

    invoke-direct {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapElement$1;-><init>()V

    sput-object v0, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->NONE:Lcom/android/voicemail/impl/mail/store/imap/ImapElement;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->mDestroyed:Z

    return-void
.end method


# virtual methods
.method protected final checkNotDestroyed()V
    .locals 2

    .line 100
    iget-boolean v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->mDestroyed:Z

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->mDestroyed:Z

    return-void
.end method

.method public equalsForTest(Lcom/android/voicemail/impl/mail/store/imap/ImapElement;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected isDestroyed()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->mDestroyed:Z

    return v0
.end method

.method public abstract isList()Z
.end method

.method public abstract isString()Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
