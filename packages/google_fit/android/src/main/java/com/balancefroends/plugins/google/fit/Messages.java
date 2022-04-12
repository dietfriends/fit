// Autogenerated from Pigeon (v2.0.3), do not edit directly.
// See also: https://pub.dev/packages/pigeon

package com.balancefroends.plugins.google.fit;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

/** Generated class from Pigeon. */
@SuppressWarnings({"unused", "unchecked", "CodeBlock2Expr", "RedundantSuppression"})
public class Messages {

  public enum DataSourceType {
    TYPE_DERIVED(0),
    TYPE_RAW(1);

    private int index;
    private DataSourceType(final int index) {
      this.index = index;
    }
  }

  /** Generated class from Pigeon that represents data sent in messages. */
  public static class DataType {
    private @NonNull String name;
    public @NonNull String getName() { return name; }
    public void setName(@NonNull String setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"name\" is null.");
      }
      this.name = setterArg;
    }

    private @NonNull String readScope;
    public @NonNull String getReadScope() { return readScope; }
    public void setReadScope(@NonNull String setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"readScope\" is null.");
      }
      this.readScope = setterArg;
    }

    private @NonNull String writeScope;
    public @NonNull String getWriteScope() { return writeScope; }
    public void setWriteScope(@NonNull String setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"writeScope\" is null.");
      }
      this.writeScope = setterArg;
    }

    private @Nullable DataType aggregateType;
    public @Nullable DataType getAggregateType() { return aggregateType; }
    public void setAggregateType(@Nullable DataType setterArg) {
      this.aggregateType = setterArg;
    }

    /** Constructor is private to enforce null safety; use Builder. */
    private DataType() {}
    public static final class Builder {
      private @Nullable String name;
      public @NonNull Builder setName(@NonNull String setterArg) {
        this.name = setterArg;
        return this;
      }
      private @Nullable String readScope;
      public @NonNull Builder setReadScope(@NonNull String setterArg) {
        this.readScope = setterArg;
        return this;
      }
      private @Nullable String writeScope;
      public @NonNull Builder setWriteScope(@NonNull String setterArg) {
        this.writeScope = setterArg;
        return this;
      }
      private @Nullable DataType aggregateType;
      public @NonNull Builder setAggregateType(@Nullable DataType setterArg) {
        this.aggregateType = setterArg;
        return this;
      }
      public @NonNull DataType build() {
        DataType pigeonReturn = new DataType();
        pigeonReturn.setName(name);
        pigeonReturn.setReadScope(readScope);
        pigeonReturn.setWriteScope(writeScope);
        pigeonReturn.setAggregateType(aggregateType);
        return pigeonReturn;
      }
    }
    @NonNull Map<String, Object> toMap() {
      Map<String, Object> toMapResult = new HashMap<>();
      toMapResult.put("name", name);
      toMapResult.put("readScope", readScope);
      toMapResult.put("writeScope", writeScope);
      toMapResult.put("aggregateType", (aggregateType == null) ? null : aggregateType.toMap());
      return toMapResult;
    }
    static @NonNull DataType fromMap(@NonNull Map<String, Object> map) {
      DataType pigeonResult = new DataType();
      Object name = map.get("name");
      pigeonResult.setName((String)name);
      Object readScope = map.get("readScope");
      pigeonResult.setReadScope((String)readScope);
      Object writeScope = map.get("writeScope");
      pigeonResult.setWriteScope((String)writeScope);
      Object aggregateType = map.get("aggregateType");
      pigeonResult.setAggregateType((aggregateType == null) ? null : DataType.fromMap((Map)aggregateType));
      return pigeonResult;
    }
  }

  /** Generated class from Pigeon that represents data sent in messages. */
  public static class DataSource {
    private @Nullable String appPackageName;
    public @Nullable String getAppPackageName() { return appPackageName; }
    public void setAppPackageName(@Nullable String setterArg) {
      this.appPackageName = setterArg;
    }

    private @Nullable DataType dateType;
    public @Nullable DataType getDateType() { return dateType; }
    public void setDateType(@Nullable DataType setterArg) {
      this.dateType = setterArg;
    }

    private @Nullable String streamIdentifier;
    public @Nullable String getStreamIdentifier() { return streamIdentifier; }
    public void setStreamIdentifier(@Nullable String setterArg) {
      this.streamIdentifier = setterArg;
    }

    private @Nullable String streamName;
    public @Nullable String getStreamName() { return streamName; }
    public void setStreamName(@Nullable String setterArg) {
      this.streamName = setterArg;
    }

    private @Nullable DataSourceType type;
    public @Nullable DataSourceType getType() { return type; }
    public void setType(@Nullable DataSourceType setterArg) {
      this.type = setterArg;
    }

    public static final class Builder {
      private @Nullable String appPackageName;
      public @NonNull Builder setAppPackageName(@Nullable String setterArg) {
        this.appPackageName = setterArg;
        return this;
      }
      private @Nullable DataType dateType;
      public @NonNull Builder setDateType(@Nullable DataType setterArg) {
        this.dateType = setterArg;
        return this;
      }
      private @Nullable String streamIdentifier;
      public @NonNull Builder setStreamIdentifier(@Nullable String setterArg) {
        this.streamIdentifier = setterArg;
        return this;
      }
      private @Nullable String streamName;
      public @NonNull Builder setStreamName(@Nullable String setterArg) {
        this.streamName = setterArg;
        return this;
      }
      private @Nullable DataSourceType type;
      public @NonNull Builder setType(@Nullable DataSourceType setterArg) {
        this.type = setterArg;
        return this;
      }
      public @NonNull DataSource build() {
        DataSource pigeonReturn = new DataSource();
        pigeonReturn.setAppPackageName(appPackageName);
        pigeonReturn.setDateType(dateType);
        pigeonReturn.setStreamIdentifier(streamIdentifier);
        pigeonReturn.setStreamName(streamName);
        pigeonReturn.setType(type);
        return pigeonReturn;
      }
    }
    @NonNull Map<String, Object> toMap() {
      Map<String, Object> toMapResult = new HashMap<>();
      toMapResult.put("appPackageName", appPackageName);
      toMapResult.put("dateType", (dateType == null) ? null : dateType.toMap());
      toMapResult.put("streamIdentifier", streamIdentifier);
      toMapResult.put("streamName", streamName);
      toMapResult.put("type", type == null ? null : type.index);
      return toMapResult;
    }
    static @NonNull DataSource fromMap(@NonNull Map<String, Object> map) {
      DataSource pigeonResult = new DataSource();
      Object appPackageName = map.get("appPackageName");
      pigeonResult.setAppPackageName((String)appPackageName);
      Object dateType = map.get("dateType");
      pigeonResult.setDateType((dateType == null) ? null : DataType.fromMap((Map)dateType));
      Object streamIdentifier = map.get("streamIdentifier");
      pigeonResult.setStreamIdentifier((String)streamIdentifier);
      Object streamName = map.get("streamName");
      pigeonResult.setStreamName((String)streamName);
      Object type = map.get("type");
      pigeonResult.setType(type == null ? null : DataSourceType.values()[(int)type]);
      return pigeonResult;
    }
  }

  /** Generated class from Pigeon that represents data sent in messages. */
  public static class DataPoint {
    private @Nullable DataSource dataSource;
    public @Nullable DataSource getDataSource() { return dataSource; }
    public void setDataSource(@Nullable DataSource setterArg) {
      this.dataSource = setterArg;
    }

    public static final class Builder {
      private @Nullable DataSource dataSource;
      public @NonNull Builder setDataSource(@Nullable DataSource setterArg) {
        this.dataSource = setterArg;
        return this;
      }
      public @NonNull DataPoint build() {
        DataPoint pigeonReturn = new DataPoint();
        pigeonReturn.setDataSource(dataSource);
        return pigeonReturn;
      }
    }
    @NonNull Map<String, Object> toMap() {
      Map<String, Object> toMapResult = new HashMap<>();
      toMapResult.put("dataSource", (dataSource == null) ? null : dataSource.toMap());
      return toMapResult;
    }
    static @NonNull DataPoint fromMap(@NonNull Map<String, Object> map) {
      DataPoint pigeonResult = new DataPoint();
      Object dataSource = map.get("dataSource");
      pigeonResult.setDataSource((dataSource == null) ? null : DataSource.fromMap((Map)dataSource));
      return pigeonResult;
    }
  }

  /** Generated class from Pigeon that represents data sent in messages. */
  public static class DataSet {
    private @Nullable DataType dataType;
    public @Nullable DataType getDataType() { return dataType; }
    public void setDataType(@Nullable DataType setterArg) {
      this.dataType = setterArg;
    }

    private @NonNull List<DataPoint> dataPoints;
    public @NonNull List<DataPoint> getDataPoints() { return dataPoints; }
    public void setDataPoints(@NonNull List<DataPoint> setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"dataPoints\" is null.");
      }
      this.dataPoints = setterArg;
    }

    /** Constructor is private to enforce null safety; use Builder. */
    private DataSet() {}
    public static final class Builder {
      private @Nullable DataType dataType;
      public @NonNull Builder setDataType(@Nullable DataType setterArg) {
        this.dataType = setterArg;
        return this;
      }
      private @Nullable List<DataPoint> dataPoints;
      public @NonNull Builder setDataPoints(@NonNull List<DataPoint> setterArg) {
        this.dataPoints = setterArg;
        return this;
      }
      public @NonNull DataSet build() {
        DataSet pigeonReturn = new DataSet();
        pigeonReturn.setDataType(dataType);
        pigeonReturn.setDataPoints(dataPoints);
        return pigeonReturn;
      }
    }
    @NonNull Map<String, Object> toMap() {
      Map<String, Object> toMapResult = new HashMap<>();
      toMapResult.put("dataType", (dataType == null) ? null : dataType.toMap());
      toMapResult.put("dataPoints", dataPoints);
      return toMapResult;
    }
    static @NonNull DataSet fromMap(@NonNull Map<String, Object> map) {
      DataSet pigeonResult = new DataSet();
      Object dataType = map.get("dataType");
      pigeonResult.setDataType((dataType == null) ? null : DataType.fromMap((Map)dataType));
      Object dataPoints = map.get("dataPoints");
      pigeonResult.setDataPoints((List<DataPoint>)dataPoints);
      return pigeonResult;
    }
  }

  public interface Result<T> {
    void success(T result);
    void error(Throwable error);
  }
  private static class HistoryClientCodec extends StandardMessageCodec {
    public static final HistoryClientCodec INSTANCE = new HistoryClientCodec();
    private HistoryClientCodec() {}
    @Override
    protected Object readValueOfType(byte type, ByteBuffer buffer) {
      switch (type) {
        case (byte)128:         
          return DataPoint.fromMap((Map<String, Object>) readValue(buffer));
        
        case (byte)129:         
          return DataSet.fromMap((Map<String, Object>) readValue(buffer));
        
        case (byte)130:         
          return DataSource.fromMap((Map<String, Object>) readValue(buffer));
        
        case (byte)131:         
          return DataType.fromMap((Map<String, Object>) readValue(buffer));
        
        default:        
          return super.readValueOfType(type, buffer);
        
      }
    }
    @Override
    protected void writeValue(ByteArrayOutputStream stream, Object value)     {
      if (value instanceof DataPoint) {
        stream.write(128);
        writeValue(stream, ((DataPoint) value).toMap());
      } else 
      if (value instanceof DataSet) {
        stream.write(129);
        writeValue(stream, ((DataSet) value).toMap());
      } else 
      if (value instanceof DataSource) {
        stream.write(130);
        writeValue(stream, ((DataSource) value).toMap());
      } else 
      if (value instanceof DataType) {
        stream.write(131);
        writeValue(stream, ((DataType) value).toMap());
      } else 
{
        super.writeValue(stream, value);
      }
    }
  }

  /** Generated interface from Pigeon that represents a handler of messages from Flutter.*/
  public interface HistoryClient {
    void readDailyTotal(@NonNull DataType dataType, Result<DataSet> result);
    void readDailyTotalFromLocalDevice(@NonNull DataType dataType, Result<DataSet> result);

    /** The codec used by HistoryClient. */
    static MessageCodec<Object> getCodec() {
      return HistoryClientCodec.INSTANCE;
    }

    /** Sets up an instance of `HistoryClient` to handle messages through the `binaryMessenger`. */
    static void setup(BinaryMessenger binaryMessenger, HistoryClient api) {
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(binaryMessenger, "dev.flutter.pigeon.HistoryClient.readDailyTotal", getCodec());
        if (api != null) {
          channel.setMessageHandler((message, reply) -> {
            Map<String, Object> wrapped = new HashMap<>();
            try {
              ArrayList<Object> args = (ArrayList<Object>)message;
              DataType dataTypeArg = (DataType)args.get(0);
              if (dataTypeArg == null) {
                throw new NullPointerException("dataTypeArg unexpectedly null.");
              }
              Result<DataSet> resultCallback = new Result<DataSet>() {
                public void success(DataSet result) {
                  wrapped.put("result", result);
                  reply.reply(wrapped);
                }
                public void error(Throwable error) {
                  wrapped.put("error", wrapError(error));
                  reply.reply(wrapped);
                }
              };

              api.readDailyTotal(dataTypeArg, resultCallback);
            }
            catch (Error | RuntimeException exception) {
              wrapped.put("error", wrapError(exception));
              reply.reply(wrapped);
            }
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(binaryMessenger, "dev.flutter.pigeon.HistoryClient.readDailyTotalFromLocalDevice", getCodec());
        if (api != null) {
          channel.setMessageHandler((message, reply) -> {
            Map<String, Object> wrapped = new HashMap<>();
            try {
              ArrayList<Object> args = (ArrayList<Object>)message;
              DataType dataTypeArg = (DataType)args.get(0);
              if (dataTypeArg == null) {
                throw new NullPointerException("dataTypeArg unexpectedly null.");
              }
              Result<DataSet> resultCallback = new Result<DataSet>() {
                public void success(DataSet result) {
                  wrapped.put("result", result);
                  reply.reply(wrapped);
                }
                public void error(Throwable error) {
                  wrapped.put("error", wrapError(error));
                  reply.reply(wrapped);
                }
              };

              api.readDailyTotalFromLocalDevice(dataTypeArg, resultCallback);
            }
            catch (Error | RuntimeException exception) {
              wrapped.put("error", wrapError(exception));
              reply.reply(wrapped);
            }
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
    }
  }
  private static Map<String, Object> wrapError(Throwable exception) {
    Map<String, Object> errorMap = new HashMap<>();
    errorMap.put("message", exception.toString());
    errorMap.put("code", exception.getClass().getSimpleName());
    errorMap.put("details", "Cause: " + exception.getCause() + ", Stacktrace: " + Log.getStackTraceString(exception));
    return errorMap;
  }
}