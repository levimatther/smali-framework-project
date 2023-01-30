.class Lcom/android/dialer/app/dialpad/DialpadFragment$Record;
.super Ljava/lang/Object;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Record"
.end annotation


# instance fields
.field contactId:J

.field name:Ljava/lang/String;

.field normalizedNumber:Ljava/lang/String;

.field number:Ljava/lang/String;

.field photoId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$Record;->number:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 298
    iput-wide v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$Record;->contactId:J

    return-void
.end method
