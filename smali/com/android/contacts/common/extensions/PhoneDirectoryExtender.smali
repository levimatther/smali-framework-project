.class public interface abstract Lcom/android/contacts/common/extensions/PhoneDirectoryExtender;
.super Ljava/lang/Object;
.source "PhoneDirectoryExtender.java"


# virtual methods
.method public abstract getContentUri()Landroid/net/Uri;
.end method

.method public abstract getExtendedDirectories(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/contacts/common/list/DirectoryPartition;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isEnabled(Landroid/content/Context;)Z
.end method
