.class public final Le/i/c/a/b$e;
.super Ljava/lang/Object;
.source "Equivalence.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final equivalence:Le/i/c/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/c/a/b<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final reference:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Le/i/c/a/b;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/c/a/b<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Le/i/c/a/b;

    iput-object p1, p0, Le/i/c/a/b$e;->equivalence:Le/i/c/a/b;

    .line 4
    iput-object p2, p0, Le/i/c/a/b$e;->reference:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Le/i/c/a/b;Ljava/lang/Object;Le/i/c/a/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/i/c/a/b$e;-><init>(Le/i/c/a/b;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Le/i/c/a/b$e;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Le/i/c/a/b$e;

    .line 3
    iget-object v0, p0, Le/i/c/a/b$e;->equivalence:Le/i/c/a/b;

    iget-object v1, p1, Le/i/c/a/b$e;->equivalence:Le/i/c/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/i/c/a/b$e;->equivalence:Le/i/c/a/b;

    .line 5
    iget-object v1, p0, Le/i/c/a/b$e;->reference:Ljava/lang/Object;

    iget-object p1, p1, Le/i/c/a/b$e;->reference:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Le/i/c/a/b;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/c/a/b$e;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/i/c/a/b$e;->equivalence:Le/i/c/a/b;

    iget-object v1, p0, Le/i/c/a/b$e;->reference:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Le/i/c/a/b;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/i/c/a/b$e;->equivalence:Le/i/c/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".wrap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/i/c/a/b$e;->reference:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
