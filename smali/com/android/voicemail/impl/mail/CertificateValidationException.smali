.class public Lcom/android/voicemail/impl/mail/CertificateValidationException;
.super Lcom/android/voicemail/impl/mail/MessagingException;
.source "CertificateValidationException.java"


# static fields
.field public static final serialVersionUID:J = -0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xa

    .line 23
    invoke-direct {p0, v0, p1}, Lcom/android/voicemail/impl/mail/MessagingException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/16 v0, 0xa

    .line 27
    invoke-direct {p0, v0, p1, p2}, Lcom/android/voicemail/impl/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
