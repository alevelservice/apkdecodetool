.class public Lk/b/a/v/e;
.super Lk/b/a/b;
.source "DateTimeParseException.java"


# static fields
.field private static final serialVersionUID:J = 0x3bbd215ce3915525L


# instance fields
.field private final errorIndex:I

.field private final parsedString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/v/e;->parsedString:Ljava/lang/String;

    .line 3
    iput p3, p0, Lk/b/a/v/e;->errorIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p4}, Lk/b/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/v/e;->parsedString:Ljava/lang/String;

    .line 6
    iput p3, p0, Lk/b/a/v/e;->errorIndex:I

    return-void
.end method


# virtual methods
.method public getErrorIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/v/e;->errorIndex:I

    return v0
.end method

.method public getParsedString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/v/e;->parsedString:Ljava/lang/String;

    return-object v0
.end method
