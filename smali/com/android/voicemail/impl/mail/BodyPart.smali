.class public abstract Lcom/android/voicemail/impl/mail/BodyPart;
.super Ljava/lang/Object;
.source "BodyPart.java"

# interfaces
.implements Lcom/android/voicemail/impl/mail/Part;


# instance fields
.field protected mParent:Lcom/android/voicemail/impl/mail/Multipart;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParent()Lcom/android/voicemail/impl/mail/Multipart;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/BodyPart;->mParent:Lcom/android/voicemail/impl/mail/Multipart;

    return-object v0
.end method
