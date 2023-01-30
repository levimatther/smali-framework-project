.class final Lcom/google/android/libraries/backup/BackupKeyPredicates$2;
.super Ljava/lang/Object;
.source "BackupKeyPredicates.java"

# interfaces
.implements Lcom/google/android/libraries/backup/BackupKeyPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/backup/BackupKeyPredicates;->containsPattern(Ljava/lang/String;)Lcom/google/android/libraries/backup/BackupKeyPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$compiledPattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/google/android/libraries/backup/BackupKeyPredicates$2;->val$compiledPattern:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldBeBackedUp(Ljava/lang/String;)Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/android/libraries/backup/BackupKeyPredicates$2;->val$compiledPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method
