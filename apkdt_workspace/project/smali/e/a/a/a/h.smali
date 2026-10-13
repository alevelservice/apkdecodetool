.class public Le/a/a/a/h;
.super Ljava/lang/Object;
.source "Subscriber.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:Le/a/a/a/g/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Le/a/a/a/h;->a:J

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Le/a/a/a/h;->c:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Le/a/a/a/g/b;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Le/a/a/a/h;->a:J

    const/4 p3, 0x3

    .line 6
    iput p3, p0, Le/a/a/a/h;->c:I

    .line 7
    iput-wide p1, p0, Le/a/a/a/h;->a:J

    .line 8
    iput-object p4, p0, Le/a/a/a/h;->b:Ljava/lang/String;

    .line 9
    iput p5, p0, Le/a/a/a/h;->c:I

    .line 10
    iput p6, p0, Le/a/a/a/h;->d:I

    .line 11
    iput p7, p0, Le/a/a/a/h;->e:I

    .line 12
    iput-object p9, p0, Le/a/a/a/h;->f:Le/a/a/a/g/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/a/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Le/a/a/a/h;->a:J

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/a/h;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/a/h;->d:I

    return v0
.end method

.method public d()Le/a/a/a/g/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/a/h;->f:Le/a/a/a/g/b;

    return-object v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/a/a/a/h;->a:J

    return-wide v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/a/h;->e:I

    return v0
.end method
