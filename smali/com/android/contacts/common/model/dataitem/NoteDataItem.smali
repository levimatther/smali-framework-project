.class public Lcom/android/contacts/common/model/dataitem/NoteDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;
.source "NoteDataItem.java"


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public getNote()Ljava/lang/String;
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/NoteDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
