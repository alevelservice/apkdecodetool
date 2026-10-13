.class public Lcom/mapbox/android/telemetry/LocationEvent;
.super Lcom/mapbox/android/telemetry/Event;
.source "LocationEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mapbox/android/telemetry/LocationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCATION:Ljava/lang/String; = "location"

.field private static final OPERATING_SYSTEM:Ljava/lang/String;

.field private static final SOURCE_MAPBOX:Ljava/lang/String; = "mapbox"


# instance fields
.field private accuracy:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "horizontalAccuracy"
    .end annotation
.end field

.field private altitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "altitude"
    .end annotation
.end field

.field private applicationState:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "applicationState"
    .end annotation
.end field

.field private final created:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created"
    .end annotation
.end field

.field private final event:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "event"
    .end annotation
.end field

.field private final latitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lat"
    .end annotation
.end field

.field private final longitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lng"
    .end annotation
.end field

.field private operatingSystem:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "operatingSystem"
    .end annotation
.end field

.field private final sessionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sessionId"
    .end annotation
.end field

.field private source:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapbox/android/telemetry/LocationEvent;->OPERATING_SYSTEM:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/mapbox/android/telemetry/LocationEvent$a;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/LocationEvent$a;-><init>()V

    sput-object v0, Lcom/mapbox/android/telemetry/LocationEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/Event;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->altitude:Ljava/lang/Double;

    .line 15
    iput-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->accuracy:Ljava/lang/Float;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->event:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->created:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->source:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->sessionId:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->latitude:D

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->longitude:D

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->altitude:Ljava/lang/Double;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->operatingSystem:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->applicationState:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->accuracy:Ljava/lang/Float;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mapbox/android/telemetry/LocationEvent$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mapbox/android/telemetry/LocationEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDLjava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/Event;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->altitude:Ljava/lang/Double;

    .line 4
    iput-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->accuracy:Ljava/lang/Float;

    const-string v0, "location"

    .line 5
    iput-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->event:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/mapbox/android/telemetry/l0;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->created:Ljava/lang/String;

    const-string v0, "mapbox"

    .line 7
    iput-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->source:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->sessionId:Ljava/lang/String;

    .line 9
    iput-wide p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->latitude:D

    .line 10
    iput-wide p4, p0, Lcom/mapbox/android/telemetry/LocationEvent;->longitude:D

    .line 11
    sget-object p1, Lcom/mapbox/android/telemetry/LocationEvent;->OPERATING_SYSTEM:Ljava/lang/String;

    iput-object p1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->operatingSystem:Ljava/lang/String;

    .line 12
    iput-object p6, p0, Lcom/mapbox/android/telemetry/LocationEvent;->applicationState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getAccuracy()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->accuracy:Ljava/lang/Float;

    return-object v0
.end method

.method getAltitude()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->altitude:Ljava/lang/Double;

    return-object v0
.end method

.method getEvent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->event:Ljava/lang/String;

    return-object v0
.end method

.method getLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->latitude:D

    return-wide v0
.end method

.method getLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->longitude:D

    return-wide v0
.end method

.method getOperatingSystem()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->operatingSystem:Ljava/lang/String;

    return-object v0
.end method

.method getSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->source:Ljava/lang/String;

    return-object v0
.end method

.method obtainType()Lcom/mapbox/android/telemetry/Event$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/mapbox/android/telemetry/Event$a;->LOCATION:Lcom/mapbox/android/telemetry/Event$a;

    return-object v0
.end method

.method public setAccuracy(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->accuracy:Ljava/lang/Float;

    return-void
.end method

.method public setAltitude(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->altitude:Ljava/lang/Double;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->event:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->created:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->source:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-wide v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 6
    iget-wide v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 7
    iget-object p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->altitude:Ljava/lang/Double;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 10
    iget-object p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->altitude:Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 11
    :goto_0
    iget-object p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->operatingSystem:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->applicationState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->accuracy:Ljava/lang/Float;

    if-nez p2, :cond_1

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 16
    iget-object p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->accuracy:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    :goto_1
    return-void
.end method
