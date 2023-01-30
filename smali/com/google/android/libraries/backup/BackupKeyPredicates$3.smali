.class final Lcom/google/android/libraries/backup/BackupKeyPredicates$3;
.super Ljava/lang/Object;
.source "BackupKeyPredicates.java"

# interfaces
.implements Lcom/google/android/libraries/backup/BackupKeyPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/backup/BackupKeyPredicates;->orDefensivelyCopied(Ljava/lang/Iterable;)Lcom/google/android/libraries/backup/BackupKeyPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$predicates:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/google/android/libraries/backup/BackupKeyPredicates$3;->val$predicates:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldBeBackedUp(Ljava/lang/String;)Z
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/google/android/libraries/backup/BackupKeyPredicates$3;->val$predicates:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/backup/BackupKeyPredicate;

    .line 138
    invoke-interface {v1, p1}, Lcom/google/android/libraries/backup/BackupKeyPredicate;->shouldBeBackedUp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
