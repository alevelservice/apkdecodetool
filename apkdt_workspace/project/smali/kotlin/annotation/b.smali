.class public final enum Lkotlin/annotation/b;
.super Ljava/lang/Enum;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/annotation/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANNOTATION_CLASS:Lkotlin/annotation/b;

.field public static final enum CLASS:Lkotlin/annotation/b;

.field public static final enum CONSTRUCTOR:Lkotlin/annotation/b;

.field public static final enum EXPRESSION:Lkotlin/annotation/b;

.field public static final enum FIELD:Lkotlin/annotation/b;

.field public static final enum FILE:Lkotlin/annotation/b;

.field public static final enum FUNCTION:Lkotlin/annotation/b;

.field public static final enum LOCAL_VARIABLE:Lkotlin/annotation/b;

.field public static final enum PROPERTY:Lkotlin/annotation/b;

.field public static final enum PROPERTY_GETTER:Lkotlin/annotation/b;

.field public static final enum PROPERTY_SETTER:Lkotlin/annotation/b;

.field public static final enum TYPE:Lkotlin/annotation/b;

.field public static final enum TYPEALIAS:Lkotlin/annotation/b;
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation
.end field

.field public static final enum TYPE_PARAMETER:Lkotlin/annotation/b;

.field public static final enum VALUE_PARAMETER:Lkotlin/annotation/b;

.field private static final synthetic e:[Lkotlin/annotation/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xf

    new-array v0, v0, [Lkotlin/annotation/b;

    new-instance v1, Lkotlin/annotation/b;

    const/4 v2, 0x0

    const-string v3, "CLASS"

    invoke-direct {v1, v3, v2}, Lkotlin/annotation/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/b;->CLASS:Lkotlin/annotation/b;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/annotation/b;

    const/4 v2, 0x1

    const-string v3, "ANNOTATION_CLASS"

    invoke-direct {v1, v3, v2}, Lkotlin/annotation/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/b;->ANNOTATION_CLASS:Lkotlin/annotation/b;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/annotation/b;

    const/4 v2, 0x2

    const-string v3, "TYPE_PARAMETER"

    invoke-direct {v1, v3, v2}, Lkotlin/annotation/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/b;->TYPE_PARAMETER:Lkotlin/annotation/b;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/annotation/b;

    const/4 v2, 0x3

    const-string v3, "PROPERTY"

    invoke-direct {v1, v3, v2}, Lkotlin/annotation/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/b;->PROPERTY:Lkotlin/annotation/b;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/annotation/b;

    const/4 v2, 0x4

    const-string v3, "FIELD"

    invoke-direct {v1, v3, v2}, Lkotlin/annotation/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/b;->FIELD:Lkotlin/annotation/b;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/annotation/b;

    const/4 v2, 0x5

    const-string v3, "LOCAL_VARIABLE"

    invoke-direct {v1, v3, v2}, Lkotlin/annotation/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/b;->LOCAL_VARIABLE:Lkotlin/annotation/b;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/annotation/b;

    const/4 v2, 0x6

    const-string v3, "VALUE_PARAMETER"

    invoke-direct {v1, v3, v2}, Lkotlin/annotation/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/b;->VALUE_PARAMETER:Lkotlin/annotation/b;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/annotation/b;

    const/4 v2, 0x7

    const-string v3, "CONSTRUCTOR"

    invoke-direct {v1, v3, v2}, Lkotlin/annotation/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/b;->CONSTRUCTOR:Lkotlin/annotation/b;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/annotation/b;

    const/16 v2, 0x8

    const-string v3, "FUNCTION"

    invoke-direct {v1, v3, v2}, Lkotlin/annotation/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/b;->FUNCTION:Lkotlin/annotation/b;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/annotation/b;

    const/16 v2, 0x9

    const-string v3, "PROPERTY_GETTER"

    invoke-direct {v1, v3, v2}, Lkotlin/annotation/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/b;->PROPERTY_GETTER:Lkotlin/annotation/b;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/annotation/b;

    const/16 v2, 0xa

    const-string v3, "PROPERTY_SETTER"

    invoke-direct {v1, v3, v2}, Lkotlin/annotation/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/b;->PROPERTY_SETTER:Lkotlin/annotation/b;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/annotation/b;

    const/16 v2, 0xb

    const-string v3, "TYPE"

    invoke-direct {v1, v3, v2}, Lkotlin/annotation/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/b;->TYPE:Lkotlin/annotation/b;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/annotation/b;

    const/16 v2, 0xc

    const-string v3, "EXPRESSION"

    invoke-direct {v1, v3, v2}, Lkotlin/annotation/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/b;->EXPRESSION:Lkotlin/annotation/b;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/annotation/b;

    const/16 v2, 0xd

    const-string v3, "FILE"

    invoke-direct {v1, v3, v2}, Lkotlin/annotation/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/b;->FILE:Lkotlin/annotation/b;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/annotation/b;

    const/16 v2, 0xe

    const-string v3, "TYPEALIAS"

    invoke-direct {v1, v3, v2}, Lkotlin/annotation/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/b;->TYPEALIAS:Lkotlin/annotation/b;

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/annotation/b;->e:[Lkotlin/annotation/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/annotation/b;
    .locals 1

    const-class v0, Lkotlin/annotation/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/annotation/b;

    return-object p0
.end method

.method public static values()[Lkotlin/annotation/b;
    .locals 1

    sget-object v0, Lkotlin/annotation/b;->e:[Lkotlin/annotation/b;

    invoke-virtual {v0}, [Lkotlin/annotation/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/annotation/b;

    return-object v0
.end method
