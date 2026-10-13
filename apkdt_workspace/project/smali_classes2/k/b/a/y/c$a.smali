.class Lk/b/a/y/c$a;
.super Ljava/lang/Object;
.source "TzdbZoneRulesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/a/y/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[Ljava/lang/String;

.field private final c:[S

.field private final d:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[SLjava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[S",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lk/b/a/y/c$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3
    iput-object p1, p0, Lk/b/a/y/c$a;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lk/b/a/y/c$a;->b:[Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lk/b/a/y/c$a;->c:[S

    return-void
.end method

.method static synthetic a(Lk/b/a/y/c$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk/b/a/y/c$a;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;)Lk/b/a/y/f;
    .locals 4

    .line 2
    iget-object v0, p0, Lk/b/a/y/c$a;->b:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    iget-object v1, p0, Lk/b/a/y/c$a;->c:[S

    aget-short v0, v1, v0

    invoke-virtual {p0, v0}, Lk/b/a/y/c$a;->a(S)Lk/b/a/y/f;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Lk/b/a/y/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid binary time-zone data: TZDB:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", version: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lk/b/a/y/c$a;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lk/b/a/y/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method a(S)Lk/b/a/y/f;
    .locals 3

    .line 5
    iget-object v0, p0, Lk/b/a/y/c$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 6
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, [B

    .line 8
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 9
    invoke-static {v1}, Lk/b/a/y/a;->read(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lk/b/a/y/c$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 11
    :cond_0
    check-cast v0, Lk/b/a/y/f;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/y/c$a;->a:Ljava/lang/String;

    return-object v0
.end method
