.class final Lcom/google/android/libraries/backup/BackupKeyPredicates$4;
.super Ljava/lang/Object;
.source "BackupKeyPredicates.java"

# interfaces
.implements Lcom/google/android/libraries/backup/BackupKeyPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/backup/BackupKeyPredicates;->alwaysTrue()Lcom/google/android/libraries/backup/BackupKeyPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldBeBackedUp(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
