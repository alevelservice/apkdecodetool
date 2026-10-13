.class public final enum Le/f/c/j/e;
.super Ljava/lang/Enum;
.source "TriState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/f/c/j/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NO:Le/f/c/j/e;

.field public static final enum UNSET:Le/f/c/j/e;

.field public static final enum YES:Le/f/c/j/e;

.field private static final synthetic e:[Le/f/c/j/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Le/f/c/j/e;

    const/4 v1, 0x0

    const-string v2, "YES"

    invoke-direct {v0, v2, v1}, Le/f/c/j/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/c/j/e;->YES:Le/f/c/j/e;

    .line 2
    new-instance v0, Le/f/c/j/e;

    const/4 v2, 0x1

    const-string v3, "NO"

    invoke-direct {v0, v3, v2}, Le/f/c/j/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/c/j/e;->NO:Le/f/c/j/e;

    .line 3
    new-instance v0, Le/f/c/j/e;

    const/4 v3, 0x2

    const-string v4, "UNSET"

    invoke-direct {v0, v4, v3}, Le/f/c/j/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/c/j/e;->UNSET:Le/f/c/j/e;

    const/4 v0, 0x3

    new-array v0, v0, [Le/f/c/j/e;

    .line 4
    sget-object v4, Le/f/c/j/e;->YES:Le/f/c/j/e;

    aput-object v4, v0, v1

    sget-object v1, Le/f/c/j/e;->NO:Le/f/c/j/e;

    aput-object v1, v0, v2

    sget-object v1, Le/f/c/j/e;->UNSET:Le/f/c/j/e;

    aput-object v1, v0, v3

    sput-object v0, Le/f/c/j/e;->e:[Le/f/c/j/e;

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

.method public static fromDbValue(I)Le/f/c/j/e;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p0, Le/f/c/j/e;->UNSET:Le/f/c/j/e;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Le/f/c/j/e;->NO:Le/f/c/j/e;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Le/f/c/j/e;->YES:Le/f/c/j/e;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/Boolean;)Le/f/c/j/e;
    .locals 0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Le/f/c/j/e;->valueOf(Z)Le/f/c/j/e;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Le/f/c/j/e;->UNSET:Le/f/c/j/e;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Le/f/c/j/e;
    .locals 1

    .line 1
    const-class v0, Le/f/c/j/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/f/c/j/e;

    return-object p0
.end method

.method public static valueOf(Z)Le/f/c/j/e;
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Le/f/c/j/e;->YES:Le/f/c/j/e;

    goto :goto_0

    :cond_0
    sget-object p0, Le/f/c/j/e;->NO:Le/f/c/j/e;

    :goto_0
    return-object p0
.end method

.method public static values()[Le/f/c/j/e;
    .locals 1

    .line 1
    sget-object v0, Le/f/c/j/e;->e:[Le/f/c/j/e;

    invoke-virtual {v0}, [Le/f/c/j/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/f/c/j/e;

    return-object v0
.end method


# virtual methods
.method public asBoolean()Z
    .locals 3

    .line 1
    sget-object v0, Le/f/c/j/e$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized TriState value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No boolean equivalent for UNSET"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method public asBoolean(Z)Z
    .locals 2

    .line 4
    sget-object v0, Le/f/c/j/e$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized TriState value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method

.method public asBooleanObject()Ljava/lang/Boolean;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Le/f/c/j/e$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized TriState value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 4
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDbValue()I
    .locals 2

    .line 1
    sget-object v0, Le/f/c/j/e$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    return v1
.end method

.method public isSet()Z
    .locals 1

    .line 1
    sget-object v0, Le/f/c/j/e;->UNSET:Le/f/c/j/e;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
