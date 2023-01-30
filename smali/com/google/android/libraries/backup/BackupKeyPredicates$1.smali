.class final Lcom/google/android/libraries/backup/BackupKeyPredicates$1;
.super Ljava/lang/Object;
.source "BackupKeyPredicates.java"

# interfaces
.implements Lcom/google/android/libraries/backup/BackupKeyPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/backup/BackupKeyPredicates;->in(Ljava/util/Collection;)Lcom/google/android/libraries/backup/BackupKeyPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$collection:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/google/android/libraries/backup/BackupKeyPredicates$1;->val$collection:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldBeBackedUp(Ljava/lang/String;)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/android/libraries/backup/BackupKeyPredicates$1;->val$collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
