.class public Lcom/android/voicemail/impl/mail/MessageDateComparator;
.super Ljava/lang/Object;
.source "MessageDateComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/voicemail/impl/mail/Message;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/voicemail/impl/mail/Message;Lcom/android/voicemail/impl/mail/Message;)I
    .locals 1

    .line 24
    :try_start_0
    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 26
    :cond_0
    invoke-virtual {p2}, Lcom/android/voicemail/impl/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 29
    :cond_1
    invoke-virtual {p2}, Lcom/android/voicemail/impl/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, Lcom/android/voicemail/impl/mail/Message;

    check-cast p2, Lcom/android/voicemail/impl/mail/Message;

    invoke-virtual {p0, p1, p2}, Lcom/android/voicemail/impl/mail/MessageDateComparator;->compare(Lcom/android/voicemail/impl/mail/Message;Lcom/android/voicemail/impl/mail/Message;)I

    move-result p1

    return p1
.end method
