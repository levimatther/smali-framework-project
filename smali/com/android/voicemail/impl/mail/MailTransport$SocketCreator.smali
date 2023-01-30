.class interface abstract Lcom/android/voicemail/impl/mail/MailTransport$SocketCreator;
.super Ljava/lang/Object;
.source "MailTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/mail/MailTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SocketCreator"
.end annotation


# virtual methods
.method public abstract createSocket()Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation
.end method
