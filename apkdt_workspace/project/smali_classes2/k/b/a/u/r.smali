.class public final Lk/b/a/u/r;
.super Lk/b/a/w/a;
.source "JapaneseEra.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final ERA_OFFSET:I = 0x2

.field public static final HEISEI:Lk/b/a/u/r;

.field public static final MEIJI:Lk/b/a/u/r;

.field public static final SHOWA:Lk/b/a/u/r;

.field public static final TAISHO:Lk/b/a/u/r;

.field private static final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lk/b/a/u/r;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x145a0d680453ed8aL


# instance fields
.field private final transient e:Lk/b/a/f;

.field private final eraValue:I

.field private final transient f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lk/b/a/u/r;

    const/16 v1, 0x8

    const/16 v2, 0x74c

    const/16 v3, 0x9

    invoke-static {v2, v3, v1}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object v2

    const/4 v3, -0x1

    const-string v4, "Meiji"

    invoke-direct {v0, v3, v2, v4}, Lk/b/a/u/r;-><init>(ILk/b/a/f;Ljava/lang/String;)V

    sput-object v0, Lk/b/a/u/r;->MEIJI:Lk/b/a/u/r;

    .line 2
    new-instance v0, Lk/b/a/u/r;

    const/16 v2, 0x778

    const/4 v3, 0x7

    const/16 v4, 0x1e

    invoke-static {v2, v3, v4}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "Taisho"

    invoke-direct {v0, v3, v2, v4}, Lk/b/a/u/r;-><init>(ILk/b/a/f;Ljava/lang/String;)V

    sput-object v0, Lk/b/a/u/r;->TAISHO:Lk/b/a/u/r;

    .line 3
    new-instance v0, Lk/b/a/u/r;

    const/16 v2, 0x786

    const/16 v4, 0xc

    const/16 v5, 0x19

    invoke-static {v2, v4, v5}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object v2

    const/4 v4, 0x1

    const-string v5, "Showa"

    invoke-direct {v0, v4, v2, v5}, Lk/b/a/u/r;-><init>(ILk/b/a/f;Ljava/lang/String;)V

    sput-object v0, Lk/b/a/u/r;->SHOWA:Lk/b/a/u/r;

    .line 4
    new-instance v0, Lk/b/a/u/r;

    const/16 v2, 0x7c5

    invoke-static {v2, v4, v1}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object v1

    const/4 v2, 0x2

    const-string v5, "Heisei"

    invoke-direct {v0, v2, v1, v5}, Lk/b/a/u/r;-><init>(ILk/b/a/f;Ljava/lang/String;)V

    sput-object v0, Lk/b/a/u/r;->HEISEI:Lk/b/a/u/r;

    const/4 v0, 0x4

    new-array v0, v0, [Lk/b/a/u/r;

    .line 5
    sget-object v1, Lk/b/a/u/r;->MEIJI:Lk/b/a/u/r;

    aput-object v1, v0, v3

    .line 6
    sget-object v1, Lk/b/a/u/r;->TAISHO:Lk/b/a/u/r;

    aput-object v1, v0, v4

    .line 7
    sget-object v1, Lk/b/a/u/r;->SHOWA:Lk/b/a/u/r;

    aput-object v1, v0, v2

    .line 8
    sget-object v1, Lk/b/a/u/r;->HEISEI:Lk/b/a/u/r;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 9
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lk/b/a/u/r;->g:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(ILk/b/a/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/b/a/w/a;-><init>()V

    .line 2
    iput p1, p0, Lk/b/a/u/r;->eraValue:I

    .line 3
    iput-object p2, p0, Lk/b/a/u/r;->e:Lk/b/a/f;

    .line 4
    iput-object p3, p0, Lk/b/a/u/r;->f:Ljava/lang/String;

    return-void
.end method

.method private static a(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static from(Lk/b/a/f;)Lk/b/a/u/r;
    .locals 4

    .line 1
    sget-object v0, Lk/b/a/u/r;->MEIJI:Lk/b/a/u/r;

    iget-object v0, v0, Lk/b/a/u/r;->e:Lk/b/a/f;

    invoke-virtual {p0, v0}, Lk/b/a/f;->isBefore(Lk/b/a/u/b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Lk/b/a/u/r;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/b/a/u/r;

    .line 3
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 4
    aget-object v2, v0, v1

    .line 5
    iget-object v3, v2, Lk/b/a/u/r;->e:Lk/b/a/f;

    invoke-virtual {p0, v3}, Lk/b/a/f;->compareTo(Lk/b/a/u/b;)I

    move-result v3

    if-ltz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_2
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date too early: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static of(I)Lk/b/a/u/r;
    .locals 2

    .line 1
    sget-object v0, Lk/b/a/u/r;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/b/a/u/r;

    .line 2
    sget-object v1, Lk/b/a/u/r;->MEIJI:Lk/b/a/u/r;

    iget v1, v1, Lk/b/a/u/r;->eraValue:I

    if-lt p0, v1, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    iget v1, v1, Lk/b/a/u/r;->eraValue:I

    if-gt p0, v1, :cond_0

    .line 3
    invoke-static {p0}, Lk/b/a/u/r;->a(I)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Lk/b/a/b;

    const-string v0, "japaneseEra is invalid"

    invoke-direct {p0, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lk/b/a/u/r;
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0

    .line 2
    invoke-static {p0}, Lk/b/a/u/r;->of(I)Lk/b/a/u/r;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Lk/b/a/u/r;->eraValue:I

    invoke-static {v0}, Lk/b/a/u/r;->of(I)Lk/b/a/u/r;

    move-result-object v0
    :try_end_0
    .catch Lk/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Invalid era"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v0}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4
    throw v1
.end method

.method public static registerEra(Lk/b/a/f;Ljava/lang/String;)Lk/b/a/u/r;
    .locals 5

    .line 1
    sget-object v0, Lk/b/a/u/r;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/b/a/u/r;

    .line 2
    array-length v1, v0

    const-string v2, "Only one additional Japanese era can be added"

    const/4 v3, 0x4

    if-gt v1, v3, :cond_2

    const-string v1, "since"

    .line 3
    invoke-static {p0, v1}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "name"

    .line 4
    invoke-static {p1, v1}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lk/b/a/u/r;->HEISEI:Lk/b/a/u/r;

    iget-object v1, v1, Lk/b/a/u/r;->e:Lk/b/a/f;

    invoke-virtual {p0, v1}, Lk/b/a/f;->isAfter(Lk/b/a/u/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lk/b/a/u/r;

    const/4 v4, 0x3

    invoke-direct {v1, v4, p0, p1}, Lk/b/a/u/r;-><init>(ILk/b/a/f;Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 7
    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lk/b/a/u/r;

    .line 8
    aput-object v1, p0, v3

    .line 9
    sget-object p1, Lk/b/a/u/r;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v1

    .line 10
    :cond_0
    new-instance p0, Lk/b/a/b;

    invoke-direct {p0, v2}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_1
    new-instance p0, Lk/b/a/b;

    const-string p1, "Invalid since date for additional Japanese era, must be after Heisei"

    invoke-direct {p0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_2
    new-instance p0, Lk/b/a/b;

    invoke-direct {p0, v2}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lk/b/a/u/r;
    .locals 5

    const-string v0, "japaneseEra"

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lk/b/a/u/r;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/b/a/u/r;

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    iget-object v4, v3, Lk/b/a/u/r;->f:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Era not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static values()[Lk/b/a/u/r;
    .locals 2

    .line 1
    sget-object v0, Lk/b/a/u/r;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/b/a/u/r;

    .line 2
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/b/a/u/r;

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lk/b/a/u/v;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lk/b/a/u/v;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method endDate()Lk/b/a/f;
    .locals 3

    .line 1
    iget v0, p0, Lk/b/a/u/r;->eraValue:I

    invoke-static {v0}, Lk/b/a/u/r;->a(I)I

    move-result v0

    .line 2
    invoke-static {}, Lk/b/a/u/r;->values()[Lk/b/a/u/r;

    move-result-object v1

    .line 3
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    .line 4
    sget-object v0, Lk/b/a/f;->MAX:Lk/b/a/f;

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 5
    aget-object v0, v1, v0

    invoke-virtual {v0}, Lk/b/a/u/r;->startDate()Lk/b/a/f;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lk/b/a/f;->minusDays(J)Lk/b/a/f;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/u/r;->eraValue:I

    return v0
.end method

.method public range(Lk/b/a/x/i;)Lk/b/a/x/n;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lk/b/a/u/p;->INSTANCE:Lk/b/a/u/p;

    sget-object v0, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    invoke-virtual {p1, v0}, Lk/b/a/u/p;->range(Lk/b/a/x/a;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lk/b/a/w/c;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1
.end method

.method startDate()Lk/b/a/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/u/r;->e:Lk/b/a/f;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/u/r;->f:Ljava/lang/String;

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/r;->getValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
