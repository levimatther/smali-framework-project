.class public Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;
.super Ljava/lang/Object;
.source "ImapFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/mail/store/ImapFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Quota"
.end annotation


# instance fields
.field public final occupied:I

.field public final total:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    iput p1, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;->occupied:I

    .line 753
    iput p2, p0, Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;->total:I

    return-void
.end method
