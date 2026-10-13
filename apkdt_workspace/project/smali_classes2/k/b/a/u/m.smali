.class public final enum Lk/b/a/u/m;
.super Ljava/lang/Enum;
.source "HijrahEra.java"

# interfaces
.implements Lk/b/a/u/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/b/a/u/m;",
        ">;",
        "Lk/b/a/u/j;"
    }
.end annotation


# static fields
.field public static final enum AH:Lk/b/a/u/m;

.field public static final enum BEFORE_AH:Lk/b/a/u/m;

.field private static final synthetic e:[Lk/b/a/u/m;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lk/b/a/u/m;

    const/4 v1, 0x0

    const-string v2, "BEFORE_AH"

    invoke-direct {v0, v2, v1}, Lk/b/a/u/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b/a/u/m;->BEFORE_AH:Lk/b/a/u/m;

    .line 2
    new-instance v0, Lk/b/a/u/m;

    const/4 v2, 0x1

    const-string v3, "AH"

    invoke-direct {v0, v3, v2}, Lk/b/a/u/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b/a/u/m;->AH:Lk/b/a/u/m;

    const/4 v0, 0x2

    new-array v0, v0, [Lk/b/a/u/m;

    .line 3
    sget-object v3, Lk/b/a/u/m;->BEFORE_AH:Lk/b/a/u/m;

    aput-object v3, v0, v1

    sget-object v1, Lk/b/a/u/m;->AH:Lk/b/a/u/m;

    aput-object v1, v0, v2

    sput-object v0, Lk/b/a/u/m;->e:[Lk/b/a/u/m;

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

.method public static of(I)Lk/b/a/u/m;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lk/b/a/u/m;->AH:Lk/b/a/u/m;

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lk/b/a/b;

    const-string v0, "HijrahEra not valid"

    invoke-direct {p0, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    sget-object p0, Lk/b/a/u/m;->BEFORE_AH:Lk/b/a/u/m;

    return-object p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lk/b/a/u/m;
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0

    .line 2
    invoke-static {p0}, Lk/b/a/u/m;->of(I)Lk/b/a/u/m;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lk/b/a/u/m;
    .locals 1

    .line 1
    const-class v0, Lk/b/a/u/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/b/a/u/m;

    return-object p0
.end method

.method public static values()[Lk/b/a/u/m;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/u/m;->e:[Lk/b/a/u/m;

    invoke-virtual {v0}, [Lk/b/a/u/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/b/a/u/m;

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lk/b/a/u/v;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lk/b/a/u/v;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;
    .locals 3

    .line 1
    sget-object v0, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    invoke-virtual {p0}, Lk/b/a/u/m;->getValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->with(Lk/b/a/x/i;J)Lk/b/a/x/d;

    move-result-object p1

    return-object p1
.end method

.method public get(Lk/b/a/x/i;)I
    .locals 3

    .line 1
    sget-object v0, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lk/b/a/u/m;->getValue()I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lk/b/a/u/m;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object v0

    invoke-virtual {p0, p1}, Lk/b/a/u/m;->getLong(Lk/b/a/x/i;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lk/b/a/x/n;->checkValidIntValue(JLk/b/a/x/i;)I

    move-result p1

    return p1
.end method

.method public getDisplayName(Lk/b/a/v/l;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lk/b/a/v/c;

    invoke-direct {v0}, Lk/b/a/v/c;-><init>()V

    sget-object v1, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    invoke-virtual {v0, v1, p1}, Lk/b/a/v/c;->a(Lk/b/a/x/i;Lk/b/a/v/l;)Lk/b/a/v/c;

    invoke-virtual {v0, p2}, Lk/b/a/v/c;->a(Ljava/util/Locale;)Lk/b/a/v/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lk/b/a/v/b;->a(Lk/b/a/x/e;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLong(Lk/b/a/x/i;)J
    .locals 3

    .line 1
    sget-object v0, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lk/b/a/u/m;->getValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 3
    :cond_0
    instance-of v0, p1, Lk/b/a/x/a;

    if-nez v0, :cond_1

    .line 4
    invoke-interface {p1, p0}, Lk/b/a/x/i;->getFrom(Lk/b/a/x/e;)J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_1
    new-instance v0, Lk/b/a/x/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/x/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public isSupported(Lk/b/a/x/i;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1, p0}, Lk/b/a/x/i;->isSupportedBy(Lk/b/a/x/e;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method prolepticYear(I)I
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/u/m;->AH:Lk/b/a/u/m;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    rsub-int/lit8 p1, p1, 0x1

    :goto_0
    return p1
.end method

.method public query(Lk/b/a/x/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lk/b/a/x/k<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lk/b/a/x/j;->e()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lk/b/a/x/b;->ERAS:Lk/b/a/x/b;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lk/b/a/x/j;->a()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lk/b/a/x/j;->f()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 4
    invoke-static {}, Lk/b/a/x/j;->g()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lk/b/a/x/j;->d()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 5
    invoke-static {}, Lk/b/a/x/j;->b()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lk/b/a/x/j;->c()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1, p0}, Lk/b/a/x/k;->a(Lk/b/a/x/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public range(Lk/b/a/x/i;)Lk/b/a/x/n;
    .locals 3

    .line 1
    sget-object v0, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x1

    .line 2
    invoke-static {v0, v1, v0, v1}, Lk/b/a/x/n;->of(JJ)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lk/b/a/x/a;

    if-nez v0, :cond_1

    .line 4
    invoke-interface {p1, p0}, Lk/b/a/x/i;->rangeRefinedBy(Lk/b/a/x/e;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance v0, Lk/b/a/x/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/x/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/m;->getValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
