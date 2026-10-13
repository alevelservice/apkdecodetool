.class public final enum Lcom/google/gson/r/b;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/gson/r/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BEGIN_ARRAY:Lcom/google/gson/r/b;

.field public static final enum BEGIN_OBJECT:Lcom/google/gson/r/b;

.field public static final enum BOOLEAN:Lcom/google/gson/r/b;

.field public static final enum END_ARRAY:Lcom/google/gson/r/b;

.field public static final enum END_DOCUMENT:Lcom/google/gson/r/b;

.field public static final enum END_OBJECT:Lcom/google/gson/r/b;

.field public static final enum NAME:Lcom/google/gson/r/b;

.field public static final enum NULL:Lcom/google/gson/r/b;

.field public static final enum NUMBER:Lcom/google/gson/r/b;

.field public static final enum STRING:Lcom/google/gson/r/b;

.field private static final synthetic e:[Lcom/google/gson/r/b;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/google/gson/r/b;

    const/4 v1, 0x0

    const-string v2, "BEGIN_ARRAY"

    invoke-direct {v0, v2, v1}, Lcom/google/gson/r/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/r/b;->BEGIN_ARRAY:Lcom/google/gson/r/b;

    .line 2
    new-instance v0, Lcom/google/gson/r/b;

    const/4 v2, 0x1

    const-string v3, "END_ARRAY"

    invoke-direct {v0, v3, v2}, Lcom/google/gson/r/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/r/b;->END_ARRAY:Lcom/google/gson/r/b;

    .line 3
    new-instance v0, Lcom/google/gson/r/b;

    const/4 v3, 0x2

    const-string v4, "BEGIN_OBJECT"

    invoke-direct {v0, v4, v3}, Lcom/google/gson/r/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/r/b;->BEGIN_OBJECT:Lcom/google/gson/r/b;

    .line 4
    new-instance v0, Lcom/google/gson/r/b;

    const/4 v4, 0x3

    const-string v5, "END_OBJECT"

    invoke-direct {v0, v5, v4}, Lcom/google/gson/r/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/r/b;->END_OBJECT:Lcom/google/gson/r/b;

    .line 5
    new-instance v0, Lcom/google/gson/r/b;

    const/4 v5, 0x4

    const-string v6, "NAME"

    invoke-direct {v0, v6, v5}, Lcom/google/gson/r/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/r/b;->NAME:Lcom/google/gson/r/b;

    .line 6
    new-instance v0, Lcom/google/gson/r/b;

    const/4 v6, 0x5

    const-string v7, "STRING"

    invoke-direct {v0, v7, v6}, Lcom/google/gson/r/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/r/b;->STRING:Lcom/google/gson/r/b;

    .line 7
    new-instance v0, Lcom/google/gson/r/b;

    const/4 v7, 0x6

    const-string v8, "NUMBER"

    invoke-direct {v0, v8, v7}, Lcom/google/gson/r/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/r/b;->NUMBER:Lcom/google/gson/r/b;

    .line 8
    new-instance v0, Lcom/google/gson/r/b;

    const/4 v8, 0x7

    const-string v9, "BOOLEAN"

    invoke-direct {v0, v9, v8}, Lcom/google/gson/r/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/r/b;->BOOLEAN:Lcom/google/gson/r/b;

    .line 9
    new-instance v0, Lcom/google/gson/r/b;

    const/16 v9, 0x8

    const-string v10, "NULL"

    invoke-direct {v0, v10, v9}, Lcom/google/gson/r/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/r/b;->NULL:Lcom/google/gson/r/b;

    .line 10
    new-instance v0, Lcom/google/gson/r/b;

    const/16 v10, 0x9

    const-string v11, "END_DOCUMENT"

    invoke-direct {v0, v11, v10}, Lcom/google/gson/r/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/r/b;->END_DOCUMENT:Lcom/google/gson/r/b;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/gson/r/b;

    .line 11
    sget-object v11, Lcom/google/gson/r/b;->BEGIN_ARRAY:Lcom/google/gson/r/b;

    aput-object v11, v0, v1

    sget-object v1, Lcom/google/gson/r/b;->END_ARRAY:Lcom/google/gson/r/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gson/r/b;->BEGIN_OBJECT:Lcom/google/gson/r/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gson/r/b;->END_OBJECT:Lcom/google/gson/r/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gson/r/b;->NAME:Lcom/google/gson/r/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gson/r/b;->STRING:Lcom/google/gson/r/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/gson/r/b;->NUMBER:Lcom/google/gson/r/b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/gson/r/b;->BOOLEAN:Lcom/google/gson/r/b;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/gson/r/b;->NULL:Lcom/google/gson/r/b;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/gson/r/b;->END_DOCUMENT:Lcom/google/gson/r/b;

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/gson/r/b;->e:[Lcom/google/gson/r/b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/r/b;
    .locals 1

    .line 1
    const-class v0, Lcom/google/gson/r/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/gson/r/b;

    return-object p0
.end method

.method public static values()[Lcom/google/gson/r/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/gson/r/b;->e:[Lcom/google/gson/r/b;

    invoke-virtual {v0}, [Lcom/google/gson/r/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gson/r/b;

    return-object v0
.end method
