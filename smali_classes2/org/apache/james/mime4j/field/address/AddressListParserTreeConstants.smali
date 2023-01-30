.class public interface abstract Lorg/apache/james/mime4j/field/address/AddressListParserTreeConstants;
.super Ljava/lang/Object;
.source "AddressListParserTreeConstants.java"


# static fields
.field public static final JJTADDRESS:I = 0x2

.field public static final JJTADDRESS_LIST:I = 0x1

.field public static final JJTADDR_SPEC:I = 0x9

.field public static final JJTANGLE_ADDR:I = 0x6

.field public static final JJTDOMAIN:I = 0xb

.field public static final JJTGROUP_BODY:I = 0x5

.field public static final JJTLOCAL_PART:I = 0xa

.field public static final JJTMAILBOX:I = 0x3

.field public static final JJTNAME_ADDR:I = 0x4

.field public static final JJTPHRASE:I = 0x8

.field public static final JJTROUTE:I = 0x7

.field public static final JJTVOID:I

.field public static final jjtNodeName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "void"

    const-string v1, "address_list"

    const-string v2, "address"

    const-string v3, "mailbox"

    const-string v4, "name_addr"

    const-string v5, "group_body"

    const-string v6, "angle_addr"

    const-string v7, "route"

    const-string v8, "phrase"

    const-string v9, "addr_spec"

    const-string v10, "local_part"

    const-string v11, "domain"

    .line 20
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/address/AddressListParserTreeConstants;->jjtNodeName:[Ljava/lang/String;

    return-void
.end method
