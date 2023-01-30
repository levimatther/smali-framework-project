.class public interface abstract Lorg/apache/james/mime4j/dom/field/ContentDispositionField;
.super Ljava/lang/Object;
.source "ContentDispositionField.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/ParsedField;


# static fields
.field public static final DISPOSITION_TYPE_ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final DISPOSITION_TYPE_INLINE:Ljava/lang/String; = "inline"

.field public static final PARAM_CREATION_DATE:Ljava/lang/String; = "creation-date"

.field public static final PARAM_FILENAME:Ljava/lang/String; = "filename"

.field public static final PARAM_MODIFICATION_DATE:Ljava/lang/String; = "modification-date"

.field public static final PARAM_READ_DATE:Ljava/lang/String; = "read-date"

.field public static final PARAM_SIZE:Ljava/lang/String; = "size"


# virtual methods
.method public abstract getCreationDate()Ljava/util/Date;
.end method

.method public abstract getDispositionType()Ljava/lang/String;
.end method

.method public abstract getFilename()Ljava/lang/String;
.end method

.method public abstract getModificationDate()Ljava/util/Date;
.end method

.method public abstract getParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReadDate()Ljava/util/Date;
.end method

.method public abstract getSize()J
.end method

.method public abstract isAttachment()Z
.end method

.method public abstract isDispositionType(Ljava/lang/String;)Z
.end method

.method public abstract isInline()Z
.end method
