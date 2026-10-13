.class public abstract enum Lcom/google/gson/o;
.super Ljava/lang/Enum;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/gson/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/google/gson/o;

.field public static final enum STRING:Lcom/google/gson/o;

.field private static final synthetic e:[Lcom/google/gson/o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/gson/o$a;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/google/gson/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/o;->DEFAULT:Lcom/google/gson/o;

    .line 2
    new-instance v0, Lcom/google/gson/o$b;

    const/4 v2, 0x1

    const-string v3, "STRING"

    invoke-direct {v0, v3, v2}, Lcom/google/gson/o$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/o;->STRING:Lcom/google/gson/o;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gson/o;

    .line 3
    sget-object v3, Lcom/google/gson/o;->DEFAULT:Lcom/google/gson/o;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/gson/o;->STRING:Lcom/google/gson/o;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/gson/o;->e:[Lcom/google/gson/o;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/gson/o$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/gson/o;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/o;
    .locals 1

    .line 1
    const-class v0, Lcom/google/gson/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/gson/o;

    return-object p0
.end method

.method public static values()[Lcom/google/gson/o;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/gson/o;->e:[Lcom/google/gson/o;

    invoke-virtual {v0}, [Lcom/google/gson/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gson/o;

    return-object v0
.end method


# virtual methods
.method public abstract serialize(Ljava/lang/Long;)Lcom/google/gson/JsonElement;
.end method
